package com.Stackery.utils.helper;

import com.Stackery.utils.MyTools;
import net.dongliu.requests.RawResponse;
import net.dongliu.requests.Requests;


public class HomeworkDownloadHelper {
    public void download() throws Exception {
        byte[] response = Requests.get("http://121.89.162.165:8640/download/gltj/1/1.jpg").send().readToBytes();
        System.out.println(response);
        MyTools.FileOutput("C:\\Users\\Yangwenhao\\Desktop\\qqqq\\1.jpg",response);
    }

    public void downloadAnswer(String filepath,String name) throws Exception {
        String filename = name.split("/")[0];
        String down = name.split("/")[1];
        int i = 1;
        while (true){
            try {
                String url = "http://121.89.162.165:8640/download/"+filename+"/"+down+"/"+i+".jpg";
                RawResponse s = Requests.get(url).send();
                if((int)s.statusCode()!= 404){
                    System.out.println(url);
                    byte[] response = s.readToBytes();
                    MyTools.FileOutput(filepath+filename+"\\"+down+"\\"+i+".jpg",response);
                }else {
                    break;
                }
                i++;
            }catch (Exception e){
                break;
            }
        }

//        System.out.println(response);

    }

    public static void main(String[] args) throws Exception {
        //假如你想要下载概率统计第一章答案 则输入gltj/1
        String name = "gltj/1";
        //保存在E盘下 需要前端传入参数
        String filepath = "E:\\";
        HomeworkDownloadHelper homeworkDownloadHelper = new HomeworkDownloadHelper();
        homeworkDownloadHelper.downloadAnswer(filepath,name);
    }
}
