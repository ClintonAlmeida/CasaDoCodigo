package br.com.casadocodigo.loja.conf;

import javax.servlet.Filter;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.context.request.RequestContextListener;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import org.springframework.web.servlet.support.RequestContext;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] {SecurityConfiguration.class, AppWebConfiguration.class, JPAConfiguration.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] {};
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return new String[]  {"/"};
	}

	
	@Override
	protected Filter[] getServletFilters() {
		CharacterEncodingFilter filter = new CharacterEncodingFilter();
		filter.setEncoding("UTF-8");
		
		return new Filter[] {filter};
	}
	
	@Override
	protected void customizeRegistration(Dynamic registration) {
		// TODO Auto-generated method stub
		registration.setMultipartConfig(new MultipartConfigElement(""));
	}
	
	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		super.onStartup(servletContext);
		servletContext.addListener(RequestContextListener.class);
		servletContext.setInitParameter("spring.profiles.active", "dev");
	}
	
	
}
