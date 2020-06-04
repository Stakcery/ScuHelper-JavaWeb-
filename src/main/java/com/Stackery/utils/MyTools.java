package com.Stackery.utils;

import com.Stackery.MyConstant;
import net.dongliu.requests.RawResponse;
import net.dongliu.requests.Requests;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 封装一些常用方法
 */
public class MyTools {
    /**
     * 封装正则匹配方法
     * @param SearchLine
     * @param condition
     * @return 正则匹配结果
     */
    public static String reMatch(String SearchLine, String condition) {
        // 按指定模式在字符串查找
        String line = SearchLine;
        String pattern = condition;

        // 创建 Pattern 对象
        Pattern r = Pattern.compile(pattern);

        // 创建 matcher 对象
        Matcher m = r.matcher(line);
        if (m.find()) {
            return m.group(0).trim();
        } else {
            System.out.println("请检查你的正则匹配规则");
            return "";
        }
    }

    /**
     * 封装输出到文件方法
     * @param path
     * @param info
     * @throws Exception
     */
    public static void FileOutput(String path,String info) throws Exception {
        File file = new File(path);
        if(!file.getParentFile().exists()){
            file.getParentFile().mkdirs();
        }
        Writer out = new FileWriter(file);
        out.write(info);
        out.close();
    }

    public static boolean FileOutput(String fname, byte[] msg) throws Exception {
        OutputStream fos = null;
        try{
            File file = new File(fname);
            File parent = file.getParentFile();
            boolean bool;
            if ((!parent.exists()) &&
                    (!parent.mkdirs())) {
                return false;
            }
            fos = new FileOutputStream(file);
            fos.write(msg);
            fos.flush();
            return true;
        }catch (FileNotFoundException e){
            return false;
        }catch (IOException e){
            File parent;
            return false;
        }
        finally{
            if (fos != null) {
                try{
                    fos.close();
                }catch (IOException e) {}
            }
        }
    }

    /**
     * 将信息发送到微信的方法
     * @param info
     */
    public static void sendMessageToWeChat(String info){
        String server_url;
        server_url = "https://sc.ftqq.com/" + MyConstant.SERVER_KEY + ".send";
        Map<String, Object> headers;
        headers = new HashMap<>();
        Map params = new HashMap();
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36");
        params.put("text",info);
        params.put("desp","");
        RawResponse result = Requests.post(server_url).headers(headers).body(params).send();

    }
}

