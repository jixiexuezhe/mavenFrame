package com.zjj.controller;

import java.io.IOException;
import java.net.MalformedURLException;
import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;
import com.gargoylesoftware.htmlunit.NicelyResynchronizingAjaxController;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.WebClientOptions;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlPage;

public class WorldBankCrawl {

	private static String TARGET_URL = "http://flight.qunar.com/site/oneway_list.htm?searchDepartureAirport=%E4%B8%8A%E6%B5%B7&searchArrivalAirport=%E9%87%8D%E5%BA%86&searchDepartureTime=2014-10-30&searchArrivalTime=&nextNDays=0&startSearch=true&ex_track=ap_20100201";

	public static void main(String[] args)
			throws FailingHttpStatusCodeException, MalformedURLException,
			IOException {
		// 模拟一个浏览器
		WebClient webClient = new WebClient();
		//webclient参数载体
		WebClientOptions clientOptions = webClient.getOptions();
		// 设置webClient的相关参数
		clientOptions.setJavaScriptEnabled(true);
		clientOptions.setCssEnabled(false);
		webClient.setAjaxController(new NicelyResynchronizingAjaxController());
		clientOptions.setTimeout(35000);
		clientOptions.setThrowExceptionOnScriptError(false);
		// 模拟浏览器打开一个目标网址
		HtmlPage rootPage = webClient.getPage("http://www.sosobtc.com/");

		//保存页面
		//rootPage.save(new File("/home/share/Test/1"));
		
		//body html信息
		HtmlElement htmlElement = rootPage.getBody();
		String xmlContent = htmlElement.asXml();
		System.out.println(xmlContent);
	}
}
