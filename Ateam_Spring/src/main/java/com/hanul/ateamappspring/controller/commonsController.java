package com.hanul.ateamappspring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import commons.FcmUtill;
import frigecontents.service.FrigeContentsService;

@Controller
public class commonsController {
	@Autowired private FrigeContentsService service;

	@ResponseBody @RequestMapping("/alarmRequest")
	public void alarmRequest(long user_id, String tokenID, HttpServletRequest request) {
		String title = "유통기한 알림";
		String content = "유통기한이 임박한 내용물이" + service.getLifeEndNum(user_id) + "개 있습니다!";
		//long user_id, String user_type, 
		FcmUtill fcmUtill = new FcmUtill();
		fcmUtill.send_FCM(tokenID, title, content, request);
	}
}