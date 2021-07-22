package com.ict.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {

	@RequestMapping("login.do")
	public ModelAndView listCommand(HttpServletRequest request) {
		String code = request.getParameter("code");
//		out.println("code : " + code);

		String reqURL = "https://kauth.kakao.com/oauth/token";
		try {
			URL url = new URL(reqURL);
			HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuffer sb = new StringBuffer();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=52cff77432fa6aeeafc02a43434931a1");
			sb.append("&redirect_uri=http://localhost:8090/login.do");
			sb.append("&code=" + code);
			bw.write(sb.toString());
			bw.flush();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			StringBuffer sb2 = new StringBuffer();
			while ((line = br.readLine()) != null) {
				sb2.append(line);
			}
			br.close();
			bw.close();
//			System.out.println("<hr>sb2 : " + sb2.toString());

			JSONParser parser = new JSONParser();
			Object obj = parser.parse(sb2.toString());
			JSONObject j_obj = (JSONObject) obj;

			String access_token = (String) j_obj.get("access_token");
			String refresh_token = (String) j_obj.get("refresh_token");
//			out.println("<hr>access_token : " + access_token);
			request.getSession().setAttribute("access_token", access_token);
			
			return new ModelAndView("result");
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	@RequestMapping("member.do")
	@ResponseBody
	public String memberCommand(HttpServletRequest request) {

		try {
			String access_token = (String) request.getSession().getAttribute("access_token");

			// 사용자 정보 요청에 필요한 URL
			String header = "Bearer " + access_token;
			String apiurl = "https://kapi.kakao.com/v2/user/me";

			Map<String, String> requestHeaders = new HashMap<String, String>();
			requestHeaders.put("Authorization", header);

			StringBuffer responseBody = new StringBuffer();
			URL url = new URL(apiurl);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			for (Map.Entry<String, String> i : requestHeaders.entrySet()) {
				conn.setRequestProperty(i.getKey(), i.getValue());
			}
			int responseCode = conn.getResponseCode();
			// System.out.println("responseCode : " + responseCode);

			if (responseCode == HttpURLConnection.HTTP_OK) {
				InputStreamReader reader = new InputStreamReader(conn.getInputStream());
				BufferedReader br = new BufferedReader(reader);
				String line = "";
				while ((line = br.readLine()) != null) {
					responseBody.append(line);
				}
			} else {
				responseBody.append("실패");
			}
			return responseBody.toString();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
