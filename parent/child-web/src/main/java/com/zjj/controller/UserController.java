package com.zjj.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.xml.sax.SAXException;

import com.meterware.httpunit.WebConversation;
import com.meterware.httpunit.WebResponse;
import com.zjj.service.UserService;

@Controller
@RequestMapping("/homepage")
public class UserController {
	Logger logger=LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	UserService userService;

	// @RequestMapping("/main")
	// public String main(){
	// return "/homepage/main";
	// }

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String mainPage(ModelMap mp) {

		try {
			List<Map<String, Object>> bdata = new ArrayList<Map<String, Object>>();
			System.out.println("获取页面中表格的内容：");
			// 建立一个WebConversation实例
			WebConversation wc = new WebConversation();
			// 获取响应对象
			WebResponse resp = wc.getResponse("http://www.btc38.com/httpAPI.php?n=0.33343298936041815");

			JSONObject json = JSONObject.fromObject(resp.getText());
			Iterator iterator = json.keySet().iterator();
			while (iterator.hasNext()) {
				Map<String, Object> maps = new HashMap<String, Object>();
				String keyString = (String) iterator.next();
				if(StringUtils.isNotEmpty(keyString)){
					String vaString = json.getString(keyString).trim();
					if(keyString.equalsIgnoreCase("btc2cny")){
						maps.put(keyString, "比特币BTC"+vaString);
						bdata.add(maps);
					}
					if(keyString.equalsIgnoreCase("ltc2cny")){
						maps.put(keyString, "莱特币LTC"+vaString);
						bdata.add(maps);
					}
					if(keyString.equalsIgnoreCase("dgc2cny")){
						maps.put(keyString, "狗狗币DOGE"+vaString);
						bdata.add(maps);
					}
					if(keyString.equalsIgnoreCase("xrp2cny")){
						maps.put(keyString, "瑞波币XRP"+vaString);
						bdata.add(maps);
					}
					
				}
			}

			mp.addAttribute("bdata", bdata);
			logger.debug(resp.getText());
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		}
		return "/homepage/main";
	}

	@RequestMapping(value = "/login")
	public String loginPage(ModelMap mp) {
		return "/homepage/login";
	}

	@RequestMapping("/register")
	public String registerPage() {
		return "/register";
	}

}
