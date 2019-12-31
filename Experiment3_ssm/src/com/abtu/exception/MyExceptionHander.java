package com.abtu.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class MyExceptionHander implements HandlerExceptionResolver {
	
	private static Logger logger = Logger.getLogger(MyExceptionHander.class); 

	@Override
	public ModelAndView resolveException(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
			Exception arg3) {
		if (arg3 instanceof MaxUploadSizeExceededException) {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("error");
			mv.addObject("errorMsg", "图片太大，请控制到1M以内");
			return mv;

		} else {
			ModelAndView mv=new ModelAndView();
			logger.error(arg3.getMessage());
			arg3.printStackTrace();
			mv.setViewName("error");
			mv.addObject("errorMsg", "服务器内部异常，请与管理员联系");
			return mv;
		}
	}

}
