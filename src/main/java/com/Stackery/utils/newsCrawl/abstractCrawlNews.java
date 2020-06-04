package com.Stackery.utils.newsCrawl;

import java.util.ArrayList;
import java.util.List;

public  class abstractCrawlNews {
    private List<String> urlCrawl = new ArrayList<>();
    private List<String> titleCrawl = new ArrayList<>();

    void crawlNews(){

    }

    public List<String> getUrlCrawl() {
        return urlCrawl;
    }

    public void setUrlCrawl(List<String> urlCrawl) {
        this.urlCrawl = urlCrawl;
    }

    public List<String> getTitleCrawl() {
        return titleCrawl;
    }

    public void setTitleCrawl(List<String> titleCrawl) {
        this.titleCrawl = titleCrawl;
    }
}
