package com.safziy.springmvc;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {

	@RequestMapping("/upload")
	public String fileUpload(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest req)
			throws IOException {
		// 获取文件名
		String fileName = file.getOriginalFilename();
		String path = req.getSession().getServletContext().getRealPath("/fileupload");
		InputStream is = file.getInputStream();
		OutputStream os = new FileOutputStream(new File(path, fileName));
		int len = 0;
		byte[] buffer = new byte[1024];
		while ((len = is.read(buffer)) != -1) {
			os.write(buffer, 0, len);
		}
		os.close();
		is.close();
		return "data";
	}

	@RequestMapping("/batchUpload")
	public String batchFileUpload(@RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest req)
			throws IOException {
		for (CommonsMultipartFile file : files) {
			// 获取文件名
			String fileName = file.getOriginalFilename();
			String path = req.getSession().getServletContext().getRealPath("/fileupload");
			InputStream is = file.getInputStream();
			OutputStream os = new FileOutputStream(new File(path, fileName));
			int len = 0;
			byte[] buffer = new byte[1024];
			while ((len = is.read(buffer)) != -1) {
				os.write(buffer, 0, len);
			}
			os.close();
			is.close();
		}
		return "data";
	}
}
