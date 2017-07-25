package com.sailing.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TimeUtils {
    public static void main(String[] args) {
        String str="Duration: 00:05:06.60, start: 0.000000, bitrate: 1087 kb/s";

        Matcher m = Pattern.compile("Duration: \\w+:\\w+:\\w+").matcher(str);
        while (m.find()) {
            String msg = m.group();
            msg = msg.replace("Duration: ", "");
            System.out.println(msg);
            String[] hms=msg.trim().split(":");
            int time=Integer.valueOf(hms[0])*60*60+Integer.valueOf(hms[1])*60+Integer.valueOf(hms[2]);

            System.out.println(time);
        }
    }
    public static int runtimeToSecond(String str){
        String[] hms=str.trim().split(":");
        if(hms.length!=3){
            return 0;
        }
        int time=Integer.valueOf(hms[0])*60*60+Integer.valueOf(hms[1])*60+Integer.valueOf(hms[2]);
        return time;
    }
}