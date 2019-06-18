package com.store.web.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CheckLoginFilter implements Filter {


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req=(HttpServletRequest)servletRequest;
        HttpServletResponse res=(HttpServletResponse)servletResponse;
        String uri=req.getRequestURI();
        int loc=uri.lastIndexOf("/");
        String page=uri.substring(loc+1);
        if(page.equals("index.jsp")||page.equals("register.jsp"))
            filterChain.doFilter(servletRequest,servletResponse);
        else {
            HttpSession session=req.getSession();
            if (session.getAttribute("user")!=null)
                filterChain.doFilter(servletRequest,servletResponse);
            else{
                String contextPath=req.getContextPath();
                res.sendRedirect(contextPath+"/index.jsp");
            }
        }
    }
    @Override
    public void destroy() {

    }
}
