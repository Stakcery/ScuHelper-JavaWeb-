package com.Stackery.utils;

import com.Stackery.MyConstant;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import net.dongliu.requests.RawResponse;
import net.dongliu.requests.Requests;

import java.util.HashMap;
import java.util.Map;

public class GetLocation {
    private String address;
    private String longitude;
    private String latitude;

    public GetLocation(String address){
        this.address = address;
    }
    // 调用百度地图API根据地址，获取坐标
    public  void getCoordinate() {
        Map<String,Object> locationInfo = new HashMap<>();
        if (address != null && !"".equals(address)) {
            address = address.replaceAll("\\s*", "").replace("#", "栋");
            String url = "http://api.map.baidu.com/geocoding/v3/?address="+address+"&output=json&ak="+ MyConstant.AK_VALUE +"&callback=showLocation";
            String result = loadInfo(url);
            String finalResult = result.substring("showLocation&&showLocation".length()+1,result.length()-1);
            JSONObject jsonObject = JSON.parseObject(finalResult);
            if (jsonObject != null && !"".equals(jsonObject)) {
                if ("0".equals(jsonObject.getString("status"))) {
                    String lng = jsonObject.getJSONObject("result").getJSONObject("location").getString("lng"); // 经度
                    String lat = jsonObject.getJSONObject("result").getJSONObject("location").getString("lat"); // 纬度
                    this.latitude = lat;
                    this.longitude = lng;
                }
            }
        }
    }

    public  String loadInfo(String url) {
        Map<String,Object> headers = new HashMap<>();
        headers.put("Referer","ywh.ywh.com");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36");
        RawResponse rawResponse = Requests.get(url).headers(headers).send();
        return rawResponse.readToText();
    }

    public String getLongitude() {
        return longitude;
    }

    public String getLatitude() {
        return latitude;
    }
}
