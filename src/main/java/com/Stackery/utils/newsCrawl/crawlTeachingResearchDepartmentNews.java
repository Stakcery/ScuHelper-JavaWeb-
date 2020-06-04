package com.Stackery.utils.newsCrawl;

import com.Stackery.utils.MyTools;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import net.dongliu.requests.Requests;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.util.*;

/**
 * 爬取教务处新闻类
 */

//网页由Ajax生成数据，需要使用正则表达匹配
public class crawlTeachingResearchDepartmentNews extends abstractCrawlNews {
    private List<String> urlCrawl = null;
    private List<String> titleCrawl = null;
    private List<String> dataCrawl;

    public crawlTeachingResearchDepartmentNews(){
        this.urlCrawl = new ArrayList<>();
        this.titleCrawl = new ArrayList<>();
        this.dataCrawl = new ArrayList<>();
    }

    public crawlTeachingResearchDepartmentNews(List<String> urlCrawl,List<String> titleCrawl, List<String> dataCrawl){
        this.urlCrawl = urlCrawl;
        this.titleCrawl = titleCrawl;
        this.dataCrawl = dataCrawl;
    }

    /**
     * 爬取新闻的方法
     */
    @Override
    public void crawlNews(){
        Map<String,Object> headers = new HashMap<>();
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Host","jwc.scu.edu.cn");
        String url = "http://jwc.scu.edu.cn/article/178/178_1.htm";
        String tempUrl = "http://jwc.scu.edu.cn/detail/";
        String response = Requests.get(url).headers(headers).send().readToText();
        Document document = Jsoup.parse(response);
        //获取站点KEY
        String result = MyTools.reMatch(response,"var.*?wzid.*?= '(.*?)'").split("=")[1].trim();
        String key = result.substring(1,result.length()-1);
        String findUrl = "http://jwc.scu.edu.cn:8081/queryPageGetJsonp?wzid="+key+"&keywords=&pageNo=1&pageSize=20&lmid=178";
        String response2 = Requests.get(findUrl).headers(headers).send().readToText();
        JSONArray jsonArray = JSON.parseObject(response2).getJSONArray("documents");
        //获取本月日期
        Calendar cal = Calendar.getInstance();
        String month = "";
        int temp = cal.get(Calendar.MONTH) + 1;
        if (temp <= 9){
            month = "0" + temp;
        }
        for (int i = 0; i < jsonArray.size(); i++) {
            String data = jsonArray.getJSONArray(i).get(1).toString().substring(5);
            if(data.substring(0,2).equals(month)){
                String param1 = jsonArray.getJSONArray(i).get(2).toString();
                String param2 = jsonArray.getJSONArray(i).get(3).toString();
                dataCrawl.add(data);
                titleCrawl.add(jsonArray.getJSONArray(i).get(0).toString());
                urlCrawl.add(tempUrl+param1+"/"+param2+".htm");
            }
        }

    }

    public List<String> getUrlCrawl() {
        return urlCrawl;
    }

    public List<String> getTitleCrawl() {
        return titleCrawl;
    }

    @Override
    public void setUrlCrawl(List<String> urlCrawl) {
        this.urlCrawl = urlCrawl;
    }

    @Override
    public void setTitleCrawl(List<String> titleCrawl) {
        this.titleCrawl = titleCrawl;
    }

    public List<String> getDataCrawl() {
        return dataCrawl;
    }

    public void setDataCrawl(List<String> dataCrawl) {
        this.dataCrawl = dataCrawl;
    }

    //test
    public static void main(String[] args) {
        List<String> urlCrawl = new ArrayList<>();
        List<String> titleCrawl = new ArrayList<>();
        List<String> dataCrawl = new ArrayList<>();
        crawlTeachingResearchDepartmentNews crawlTeachingResearchDepartmentNews = new crawlTeachingResearchDepartmentNews(urlCrawl,titleCrawl,dataCrawl);
        crawlTeachingResearchDepartmentNews.crawlNews();
        System.out.println(crawlTeachingResearchDepartmentNews.getDataCrawl().size());
        System.out.println(crawlTeachingResearchDepartmentNews.getTitleCrawl().size());
        System.out.println(crawlTeachingResearchDepartmentNews.urlCrawl);
    }
}
