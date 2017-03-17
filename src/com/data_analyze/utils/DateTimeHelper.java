package com.data_analyze.utils;

import java.text.SimpleDateFormat;

/**
 * Created by liujie on 2017/3/17.
 */

import java.sql.Timestamp;

/**
 * Created by hjc on 16-7-1.
 */
public class DateTimeHelper {
    //TransTimestamp与String之间的转换

    public static Timestamp stringToTimestamp(String time){
        //把String转换为Timestamp
        return Timestamp.valueOf(time);
    }

    public static String timestampToSecString(Timestamp timestamp){
        //把Timestamp转换为以秒为精度的String
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return df.format(timestamp);
    }

    public static String timestampToDayString(Timestamp timestamp){
        //把Timestamp转换为以天为精度的String
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        return df.format(timestamp);
    }

    public static Timestamp YMDToTimestamp(int year,int month,int day){
        //接受年月日转化为Timestamp
        String time = year+"-"+month+"-"+day+" 00:00:00";
        return stringToTimestamp(time);
    }

    /**
     * 把YYYYMM或YYYYMMDD格式的
     * @param ordinaryString 6位或8位字符串
     * @return 转化成的timestamp
     */
    public static Timestamp ordinaryStringToTimestamp(String ordinaryString) {
        int numberOfString = Integer.valueOf(ordinaryString);
        int year, month, day;
        if(ordinaryString.length()>6) {
            day = numberOfString%100;
            numberOfString/=100;
        } else {
            day = 1;
        }
        month = numberOfString%100;
        year = numberOfString/100;
        return YMDToTimestamp(year, month, day);
    }


}
