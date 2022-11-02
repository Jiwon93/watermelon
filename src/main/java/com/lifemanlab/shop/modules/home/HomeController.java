package com.lifemanlab.shop.modules.home;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lifemanlab.shop.modules.member.MemberServiceImpl;

@Controller
@RequestMapping(value = "/member/")
public class HomeController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "test/IncheonBreadList")
	public String IncheonBreadList(Model model) throws Exception {
		
		System.out.println("asdfasdfasdf");
		
		String apiUrl = "http://apis.data.go.kr/3510500/bakery_status/getList?serviceKey=T842C%2FW02KIpzjnvk5yjKHYXVqPfhVAWXvVKn9NZgDtd%2FaQcx4w8tEj7wyK%2FiUfJGnHdVDyx5USh337OfdX%2BYQ%3D%3D&type=json&numOfRows=10&pageNo=1";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
		
//		json object + array string -> java map
		
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
        
        System.out.println("# Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) map.get("header");
		
		System.out.println("## Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
//		String aaa = (String) header.get("resultCode");
		
//		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
//		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) map.get("body");
		
		System.out.println("## Body");
		for (String key : body.keySet()) {
			String value = String.valueOf(body.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> items = new HashMap<String, Object>();
		items = (Map<String, Object>) items.get("items");
		
		List<Home> item = new ArrayList<Home>();
		item = (List<Home>) items.get("item");
		
		System.out.println("item.size(): " + item.size());
		
//		for(Home item : items) {
//			System.out.println(item.getMM());
//		}
		
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		model.addAllAttributes(items);
		
		return "test/IncheonBreadList";
	}
	 

}
