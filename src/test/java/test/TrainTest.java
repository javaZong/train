package test;

import org.apache.commons.lang3.StringUtils;
import org.junit.Test;

/**
 * Created by java_zong on 2017/7/19.
 */
public class TrainTest {

    @Test
    public void test(){
        String s=" function initDataInfo(dataK, dataV) {\n" +
                "                $(document).data(dataK, dataV);\n" +
                "            }\n" +
                "            photoQueryCheck(\"tqdj7w8igah1z73u\",'xj',\"1\");\n" +
                "            initDataInfo(\"ds2-tqdj7w8igah1z73u\"+\"-m1\", \"渤海船舶职业学院\");\n" +
                "            initDataInfo(\"ds2-tqdj7w8igah1z73u\"+\"-m2\", \"计算机网络技术\");\n" +
                "            initDataInfo(\"ds2-tqdj7w8igah1z73u\"+\"-m4\", \"15G61120\");\n" +
                "            initDataInfo(\"ds2-tqdj7w8igah1z73u\"+\"-m5\", \"专科\");\n" +
                "            initDataInfo(\"ds2-tqdj7w8igah1z73u\"+\"-m6\", \"普通\");\n" +
                "            initDataInfo(\"ds2-tqdj7w8igah1z73u\"+\"-m7\", \"普通全日制\");\n" +
                "            initDataInfo(\"ds2-tqdj7w8igah1z73u\"+\"-m8\", \"210911199603193517\");";

        String c= StringUtils.replace(s," ","");
        System.out.println(c);
        String[] v=StringUtils.split(c,"\"");
        for (String a:v){
            System.out.println("哈啊哈"+v.length+a);
        }

    }

}
