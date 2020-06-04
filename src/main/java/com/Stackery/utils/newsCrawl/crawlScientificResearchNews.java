package com.Stackery.utils.newsCrawl;

import net.dongliu.requests.RawResponse;
import net.dongliu.requests.Requests;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.util.*;

/**
 * 爬取学校科研院最新新闻
 */
public class crawlScientificResearchNews extends abstractCrawlNews {
    private List<String> urlCrawl = null;
    private List<String> titleCrawl = null;
    private List<String> dataCrawl = null;

    public crawlScientificResearchNews(){
        this.urlCrawl = new ArrayList<>();
        this.titleCrawl = new ArrayList<>();
        this.dataCrawl = new ArrayList<>();
    }

    public crawlScientificResearchNews(List<String> urlCrawl,List<String> titleCrawl, List<String> dataCrawl){
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
        headers.put("Host","bwc.scu.edu.cn");
        String url = "http://ssd.scu.edu.cn/skxw/tzgg.htm";
        String tempUrl = "http://ssd.scu.edu.cn";
        RawResponse rawResponse = Requests.get(url).headers().send();
        Document doc = Jsoup.parse(rawResponse.readToText());
        Elements elements = doc.getElementsByClass("zw-list").select("ul");
        Elements elements1;
        Calendar cal = Calendar.getInstance();
        String month = "";
        int temp = cal.get(Calendar.MONTH) + 1;
        if (temp <= 9){
            month = "0" + temp;
        }
//        System.out.println(month);
        for (int i = 0; i < elements.select("li").size(); i++) {
            String data =elements.select("li").get(i).select("span").text();
            if(data.substring(5,7).equals(month)){
                data = data.substring(5);
                dataCrawl.add(data);
                elements1 = elements.select("li").get(i).getElementsByTag("a");
                urlCrawl.add(tempUrl+elements1.attr("href").substring(2));
                titleCrawl.add(elements1.attr("title"));
            }
        }
        rawResponse = Requests.get("http://ssd.scu.edu.cn/skxw/skyw.htm").headers().send();
        Document doc2 = Jsoup.parse(rawResponse.readToText());
        elements = doc2.getElementsByClass("zw-list").select("ul");
        for (int i = 0; i < elements.select("li").size(); i++) {
            String data = elements.select("li").get(i).select("span").text();
            if(data.substring(5,7).equals(month)){
                data = data.substring(5);
                dataCrawl.add(data);
                elements1 = elements.select("li").get(i).getElementsByTag("a");
                urlCrawl.add(tempUrl+elements1.attr("href").substring(2));
                titleCrawl.add(elements1.attr("title"));
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
        crawlScientificResearchNews crawlScientificResearchNews = new crawlScientificResearchNews(urlCrawl,titleCrawl,dataCrawl);
        crawlScientificResearchNews.crawlNews();
        System.out.println(crawlScientificResearchNews.getDataCrawl());
        System.out.println(crawlScientificResearchNews.getTitleCrawl());
        System.out.println(crawlScientificResearchNews.getUrlCrawl());
    }
}
