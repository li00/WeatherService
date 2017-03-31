package query;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/3/31.
 */
public class Test {
    public static void main(String[] args) {
        List<String> l = new ArrayList<>();
        l.add("rwt");
        l.add("rvbhh");
        l.add("twtysg");
        String str[] = new String[l.size()];
        int i=0;
        for(String s:l){
            str[i]=l.get(i);
            i++;
        }
        System.out.println(str[0]);
    }
}
