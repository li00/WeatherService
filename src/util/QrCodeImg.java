package util;

import com.swetake.util.Qrcode;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServlet;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

/**
 * Created by Administrator on 2017/4/1.
 */
public class QrCodeImg extends HttpServlet {
    //设定宽高
    final static int HEIGHT = 236;
    final static int WIDTH = 236;
    final static String CONTENT = "http://www.webxml.com.cn";
    final static String PATH = "web/image/QrCodeImg.png";


    /**
     * 生成二维码
     */
    public static void getQrCodeImg() throws IOException {
        //实例化一个QrCode
        Qrcode qrcode = new Qrcode();

        //排错率M代表15%
        qrcode.setQrcodeErrorCorrect('M');
        //编码集
        qrcode.setQrcodeEncodeMode('B');
        //二维码的版本
        qrcode.setQrcodeVersion(15);
        //创建一个画板
        BufferedImage bufferedImage = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
        //创建画笔
        Graphics2D graphics2D = bufferedImage.createGraphics();
        //设置背景色
        graphics2D.setBackground(Color.white);
        //创建二维码区域
        graphics2D.clearRect(0, 0, WIDTH, HEIGHT);
        //设置内容颜色
        graphics2D.setColor(Color.black);

        //获取内容的字节数据,设置字符编码
        byte[] contentBytes = CONTENT.getBytes("utf-8");
        boolean[][] codeOut = qrcode.calQrcode(contentBytes);

        int offset = 3; //设置偏移量

        //绘制二维码内容
        for (int i = 0; i < codeOut.length; i++) {
            for (int j = 0; j < codeOut.length; j++) {
                if (codeOut[i][j]) {
                    graphics2D.fillRect(j*3+ offset,i*3+ offset, 3, 3);
                }
            }
        }

        //释放资源,清空缓存
        graphics2D.dispose();
        bufferedImage.flush();

        //写出二维码
        File imgFile = new File(PATH);
        ImageIO.write(bufferedImage, "png", imgFile);
    }
}
