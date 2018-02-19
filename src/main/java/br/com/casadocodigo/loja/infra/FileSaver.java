package br.com.casadocodigo.loja.infra;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileSaver {

	@Autowired
	private HttpServletRequest servlet;
	
	public String write(String baseFolder, MultipartFile file) {
	
		try {
			String realPath = servlet.getServletContext().getRealPath("/" + baseFolder);
			String path = realPath + "/" + file.getOriginalFilename();	
			file.transferTo(new File(path));
			return baseFolder + "/" + file.getOriginalFilename();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		
	}

	public HttpServletRequest getServlet() {
		return servlet;
	}

	public void setServlet(HttpServletRequest servlet) {
		this.servlet = servlet;
	}
	
	
	
}
