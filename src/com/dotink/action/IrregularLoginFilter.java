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

			if ((session.getAttribute("user") != null)) {// ��û��session�ǲ��ܵ�¼�ó���
				chain.doFilter(request, response);
			} else if (name5 > 0 && name7.equals("jsp")
					&& (!name6.equals("login")) && (!name6.equals("login1"))) {// ����jsp����

				resp.sendRedirect(req.getContextPath() + "/login.jsp");

			} else if (name4.equals("userlogin")
					|| name4.equals("userregister")
					|| name4.equals("usercheckName")
					|| name4.equals("userfindpassword")
					|| name4.equals("project")
					|| name4.equals("userfindDuty")) {// ������1����¼��actio,2��ע���actio,3�������û����Ƿ�ע���action
													// 4���һ������action,5��ֻ��д������
													// �⼸���������
				chain.doFilter(request, response);

			} else if (name5 < 0) {//���س�������5����������е�ֱ�ӽ����action
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
