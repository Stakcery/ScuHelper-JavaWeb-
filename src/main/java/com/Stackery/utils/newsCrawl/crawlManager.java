package com.Stackery.utils.newsCrawl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class crawlManager{
    private List<String> urlCrawl = new ArrayList<>();
    private List<String> titleCrawl = new ArrayList<>();
    private List<String> dataCrawl = new ArrayList<>();

    public void crawlMonthNews(){
        crawlScientificResearchNews crawlScientificResearchNews = new crawlScientificResearchNews(this.urlCrawl,this.titleCrawl,this.dataCrawl);
        crawlScientificResearchNews.crawlNews();
        crawlSecurityDepartmentNews crawlSecurityDepartmentNews = new crawlSecurityDepartmentNews(this.urlCrawl,this.titleCrawl,this.dataCrawl);
        crawlSecurityDepartmentNews.crawlNews();
        crawlStudentWorkDepartmentNews crawlStudentWorkDepartmentNews = new crawlStudentWorkDepartmentNews(this.urlCrawl,this.titleCrawl,this.dataCrawl);
        crawlStudentWorkDepartmentNews.crawlNews();
        crawlTeachingResearchDepartmentNews crawlTeachingResearchDepartmentNews = new crawlTeachingResearchDepartmentNews(this.urlCrawl,this.titleCrawl,this.dataCrawl);
        crawlTeachingResearchDepartmentNews.crawlNews();
        crawlCyberspaceSecurityNews crawlCyberspaceSecurityNews = new crawlCyberspaceSecurityNews(this.urlCrawl,this.titleCrawl,this.dataCrawl);
        crawlCyberspaceSecurityNews.crawlNews();
        for (int i = 0; i < this.getUrlCrawl().size() ; i++) {
            System.out.println(this.getDataCrawl().size()+""+this.titleCrawl.size()+this.getTitleCrawl().size());
            System.out.println(this.getUrlCrawl().get(i));
            System.out.println(this.getTitleCrawl().get(i));
        }
    }

    public List<String> getUrlCrawl() {
        return urlCrawl;
    }

    public List<String> getTitleCrawl() {
        return titleCrawl;
    }

    public List<String> getDataCrawl() {
        return dataCrawl;
    }

    public static void main(String[] args) {
        new crawlManager().crawlMonthNews();
    }
}
