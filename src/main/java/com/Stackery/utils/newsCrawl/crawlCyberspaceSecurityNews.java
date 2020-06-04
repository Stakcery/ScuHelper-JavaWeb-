package com.Stackery.utils.newsCrawl;

import net.dongliu.requests.Requests;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.util.*;

/**
 * 爬取网络空间安全学院新闻
 */
public class crawlCyberspaceSecurityNews extends abstractCrawlNews {
    private List<String> urlCrawl;
    private List<String> titleCrawl;
    private List<String> dataCrawl;

    public crawlCyberspaceSecurityNews(){
        this.urlCrawl = new ArrayList<>();
        this.titleCrawl = new ArrayList<>();
        this.dataCrawl = new ArrayList<>();

    }


    public crawlCyberspaceSecurityNews(List<String> urlCrawl,List<String> titleCrawl, List<String> dataCrawl){
        this.urlCrawl = urlCrawl;
        this.titleCrawl = titleCrawl;
        this.dataCrawl = dataCrawl;
    }


    @Override
    public void crawlNews() {
        Map<String,Object> headers = new HashMap<>();
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        String url = "http://ccs.scu.edu.cn/zxdt/xwdt.htm";
        String tempUrl = "http://ccs.scu.edu.cn";
        String response = Requests.get(url).headers(headers).send().readToText();
        Document doc = Jsoup.parse(response);
        Elements elements = doc.getElementsByClass("zxdt-list");
        elements = elements.select("ul").select("li");
        Calendar cal = Calendar.getInstance();
        String month = "";
        int temp = cal.get(Calendar.MONTH) + 1;
        if (temp <= 9){
            month = "0" + temp;
        }
        for (int i = 0; i < elements.size(); i++) {
            String data = elements.get(i).select("b").text();
            if (data.substring(5,7).equals(month)){
                data = elements.get(i).select("b").text().substring(5);
                dataCrawl.add(data);
                urlCrawl.add(tempUrl+elements.get(i).select("a").attr("href").substring(2));
                titleCrawl.add(elements.get(i).select("a").attr("title"));
            }
        }
        url = "http://ccs.scu.edu.cn/zxdt/tzgg.htm";
        String response2 = Requests.get(url).headers(headers).send().readToText();
        Document doc2 = Jsoup.parse(response2);
        Elements elements2 = doc2.getElementsByClass("zxdt-list");
        elements2 = elements2.select("ul").select("li");
        for (int i = 0; i < elements2.size(); i++) {
            String data =elements2.get(i).select("b").text();
            if (data.substring(5,7).equals(month)){
                data = elements2.get(i).select("b").text().substring(5,10);
                dataCrawl.add(data);
                urlCrawl.add(tempUrl+elements2.get(i).select("a").attr("href").substring(2));
                titleCrawl.add(elements2.get(i).select("a").attr("title"));
            }
        }
//        System.out.println(urlCrawl);
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

    public static void main(String[] args) {
        List<String> urlCrawl = new ArrayList<>();
        List<String> titleCrawl = new ArrayList<>();
        List<String> dataCrawl = new ArrayList<>();
        crawlCyberspaceSecurityNews crawlCyberspaceSecurityNews = new crawlCyberspaceSecurityNews(urlCrawl,titleCrawl,dataCrawl);
        crawlCyberspaceSecurityNews.crawlNews();
        System.out.println(crawlCyberspaceSecurityNews.dataCrawl.size());
        System.out.println(crawlCyberspaceSecurityNews.titleCrawl.size());
        System.out.println(crawlCyberspaceSecurityNews.urlCrawl);
    }
}
