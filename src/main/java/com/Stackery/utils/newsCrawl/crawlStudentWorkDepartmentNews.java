package com.Stackery.utils.newsCrawl;

import net.dongliu.requests.Requests;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.util.*;

/**
 * 学工部新闻爬虫
 */
public class crawlStudentWorkDepartmentNews extends abstractCrawlNews {
    private List<String> urlCrawl = null;
    private List<String> titleCrawl = null;
    private List<String> dataCrawl;

    public crawlStudentWorkDepartmentNews(){
        this.urlCrawl = new ArrayList<>();
        this.titleCrawl = new ArrayList<>();
        this.dataCrawl = new ArrayList<>();
    }
    public crawlStudentWorkDepartmentNews(List<String> urlCrawl,List<String> titleCrawl, List<String> dataCrawl){
        this.urlCrawl = urlCrawl;
        this.titleCrawl = titleCrawl;
        this.dataCrawl = new ArrayList<>();
    }


    /**
     * 爬取新闻的方法
     */
    @Override
    public void crawlNews(){
        Map<String,Object> headers = new HashMap<>();
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Host","xsc.scu.edu.cn");
        String url = "http://xsc.scu.edu.cn/Website/XG/Home/NewsList?iKoOMFOTmA5QC1ALrDbTjw==.shtml";
        String tempUrl = "http://xsc.scu.edu.cn";
        String response = Requests.get(url).headers(headers).send().readToText();
        Document document = Jsoup.parse(response);
        Elements elements = document.getElementsByClass("news-list").select("ul");
        Elements elements1;
        Calendar cal = Calendar.getInstance();
        String month = "";
        int temp = cal.get(Calendar.MONTH) + 1;
        if (temp <= 9){
            month = "0" + temp;
        }
        for (int i = 0; i < elements.select("li").size(); i++) {
            String data = elements.select("li").get(i).select("span").text();
            if(data.substring(0,2).equals(month)){
                elements1 = elements.select("li").get(i).getElementsByTag("a");
                dataCrawl.add(data);
                urlCrawl.add(tempUrl+elements1.attr("href"));
                titleCrawl.add(elements1.attr("title"));
            }

        }
        String response2 = Requests.get("http://xsc.scu.edu.cn/Website/XG/Home/NewsList?A7Pyw9ICOcOx33nIrT4x0Q==.shtml").headers(headers).send().readToText();
        Document document2 = Jsoup.parse(response2);
        Elements elements2 = document2.getElementsByClass("news-list").select("ul");
        for (int i = 0; i < elements2.select("li").size(); i++) {
            String data = elements2.select("li").get(i).select("span").text();
            if(data.substring(0,2).equals(month)){
                elements1 = elements2.select("li").get(i).getElementsByTag("a");
                dataCrawl.add(data);
                urlCrawl.add(tempUrl+elements1.attr("href"));
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
        crawlStudentWorkDepartmentNews crawlStudentWorkDepartmentNews = new crawlStudentWorkDepartmentNews(urlCrawl,titleCrawl,dataCrawl);
        crawlStudentWorkDepartmentNews.crawlNews();
        System.out.println(crawlStudentWorkDepartmentNews.getDataCrawl().size());
        System.out.println(crawlStudentWorkDepartmentNews.getTitleCrawl().size());
        System.out.println(crawlStudentWorkDepartmentNews.urlCrawl);
    }
}
