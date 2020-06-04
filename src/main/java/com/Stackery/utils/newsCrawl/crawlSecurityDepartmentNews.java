package com.Stackery.utils.newsCrawl;

import net.dongliu.requests.Requests;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.util.*;

/**
 * 保卫处新闻爬虫类
 */
public class crawlSecurityDepartmentNews extends abstractCrawlNews {
    private List<String> urlCrawl = null;
    private List<String> titleCrawl = null;
    private List<String> dataCrawl;

    public crawlSecurityDepartmentNews(){
        this.urlCrawl = new ArrayList<>();
        this.titleCrawl = new ArrayList<>();
        this.dataCrawl = new ArrayList<>();
    }

    public crawlSecurityDepartmentNews(List<String> urlCrawl,List<String> titleCrawl, List<String> dataCrawl){
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
        String url = "http://bwc.scu.edu.cn/";
        String rawResponse = Requests.get(url).headers().send().readToText();
        Document doc = Jsoup.parse(rawResponse);
        Elements link =  doc.getElementsByClass("list");
        Elements element = link.select("ul").select("li");
        Calendar cal = Calendar.getInstance();
        String month = "";
        int temp = cal.get(Calendar.MONTH) + 1;
        if (temp <= 9){
            month = "0" + temp;
        }
        for (int i = 0; i < element.size() ; i++) {
            Elements element1 = element.get(i).getElementsByTag("a");
            String data = element.get(i).getElementsByTag("span").text();
            if(data.substring(0,2).equals(month)){
                String href = element1.attr("href");
                String title = element1.attr("title");
                dataCrawl.add(data);
                urlCrawl.add("http://bwc.scu.edu.cn/"+href);
                titleCrawl.add(title);
            }

        }
        url = "http://bwc.scu.edu.cn/tzgg.htm";
        rawResponse = Requests.get(url).headers().send().readToText();
        doc = Jsoup.parse(rawResponse);
        Elements elements = doc.getElementsByClass("sList").select("ul").select("li");
        for (int i = 0; i < elements.size() ; i++) {
            Elements element1 = elements.get(i).getElementsByTag("a");
            String data = elements.get(i).getElementsByTag("font").text();
            data = data.substring(0,2)+"-"+data.substring(3,5);
            if(data.substring(0,2).equals(month)){
                String href = element1.attr("href");
                String title = element1.attr("title");
                dataCrawl.add(data);
                urlCrawl.add("http://bwc.scu.edu.cn/"+href);
                titleCrawl.add(title);
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

    public static void main(String[] args) {
        List<String> urlCrawl = new ArrayList<>();
        List<String> titleCrawl = new ArrayList<>();
        List<String> dataCrawl = new ArrayList<>();
        crawlSecurityDepartmentNews crawlSecurityDepartmentNews = new crawlSecurityDepartmentNews(urlCrawl,titleCrawl,dataCrawl);
        crawlSecurityDepartmentNews.crawlNews();
        System.out.println(crawlSecurityDepartmentNews.getDataCrawl().size());
        System.out.println(crawlSecurityDepartmentNews.getTitleCrawl().size());
        System.out.println(crawlSecurityDepartmentNews.getUrlCrawl());
    }
}
