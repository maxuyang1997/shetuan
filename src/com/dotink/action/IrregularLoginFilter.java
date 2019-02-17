package com.dotink.action;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IrregularLoginFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;

		HttpSession session = req.getSession();
		String name = req.getRequestURI();

		String name2[] = name.split("/");

		if (name2.length > 1) {

			String name3[] = name.split("/");
			String name4 = name.split("/")[name3.length - 1];
			int name5 = name4.indexOf(".");
			String name6 = "";
			String name7 = "";
			if (name5 > 0) {

				name6 = name4.substring(0, name5);
				name7 = name4.substring(name5 + 1, name4.length());

			}

			if ((session.getAttribute("user") != null)) {// 当没有session是不能登录该程序
				chain.doFilter(request, response);
			} else if (name5 > 0 && name7.equals("jsp")
					&& (!name6.equals("login")) && (!name6.equals("login1"))) {// 拦截jsp界面

				resp.sendRedirect(req.getContextPath() + "/login.jsp");

			} else if (name4.equals("userlogin")
					|| name4.equals("userregister")
					|| name4.equals("usercheckName")
					|| name4.equals("userfindpassword")
					|| name4.equals("project")
					|| name4.equals("userfindDuty")) {// 不拦截1，登录的actio,2，注册的actio,3，查找用户名是否注册的action
													// 4，找回密码的action,5，只书写工程名
													// 这几中特殊情况
				chain.doFilter(request, response);

			} else if (name5 < 0) {//拦截除了上面5种情况外所有的直接进入的action
				resp.sendRedirect(req.getContextPath() + "/login.jsp");
			} else {
				chain.doFilter(request, response);

			}

		} else {
			chain.doFilter(request, response);

		}

	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
