package cn.itcast.action;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;

/**
 * Servlet implementation class DownLoadandUpload
 */
@WebServlet("/DownLoadandUpload")
public class DownLoadandUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(!ServletFileUpload.isMultipartContent(request)){
			throw new RuntimeException("别嘚瑟了，没用");
		}
		
		try {
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			fileItemFactory.setSizeThreshold(2*1024*1024);
			String temStr = this.getServletContext().getRealPath("/tem");
			File temDir = new File(temStr);
			if(!temDir.exists()){
				temDir.mkdirs();
			}
			fileItemFactory.setRepository(temDir);
			
			ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
			servletFileUpload.setFileSizeMax(100*1024*1024);
			servletFileUpload.setSizeMax(1000*1024*1024);
			servletFileUpload.setHeaderEncoding("utf-8");
			servletFileUpload.setProgressListener(new MyProgressListener());
			
			List<FileItem> list = servletFileUpload.parseRequest(request);
			for (FileItem fileItem : list) {
				if(fileItem.isFormField()){
					String fieldName = fileItem.getFieldName();
					String fieldValue = fileItem.getString("UTF-8");
					System.out.println("fieldName"+fieldName+"fieldValue:"+fieldValue);
					
				}else{
					String fileName = fileItem.getName();
					fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
					fileName = UUID.randomUUID().toString().replaceAll("-", "")+fileName;
					String filePath =  "C:\\workspace02\\EasyUi\\WebContent\\upload";
					//String filePath = this.getServletContext().getRealPath("/upload");
					File file = new File(filePath,fileName);
					
					InputStream inputStream = fileItem.getInputStream();
					FileUtils.copyInputStreamToFile(inputStream,file);
					fileItem.delete();
				}
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
