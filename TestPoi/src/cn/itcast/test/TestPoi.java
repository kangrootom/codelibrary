package cn.itcast.test;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.junit.Test;

public class TestPoi {
	
	@Test
	public void testExportExcel(){
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("test1");
		HSSFRow row = sheet.createRow(1);
		HSSFCell cell = row.createCell(1);
		cell.setCellValue(new Date().toString());
		try {
			File file = new File("测试.xls");
			if(!file.exists()){
				file.createNewFile();
			}
			FileOutputStream outPutStream = new FileOutputStream(file);
			workbook.write(outPutStream);
			workbook.close();
			outPutStream.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	@Test
	public void testMergeCell(){
		HSSFWorkbook workbook = new HSSFWorkbook();
	}
}
