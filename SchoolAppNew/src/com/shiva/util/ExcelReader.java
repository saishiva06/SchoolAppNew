package com.shiva.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.shiva.service.ExamResultsService;
import com.shiva.service.SpringService;



public class ExcelReader {
	public static Logger log = Logger.getLogger(ExcelReader.class.getName());
	private static String inputFile;

	public ExcelReader() { 
	}

	public static List<Map<String, String>> readExcelFile(String fileLocation) throws IOException  {
		File inputWorkbook = new File(fileLocation);
		List<Map<String, String>> rowList = new LinkedList<Map<String, String>>();
		Workbook w;
		try {
			w = Workbook.getWorkbook(inputWorkbook);
			Sheet sheet = w.getSheet(0);
			int columnCount = sheet.getRow(0).length;
			for (int i = 1; i < sheet.getRows(); i++) {
				Map<String, String> rowMap = new HashMap<String, String>();
				for (int j = 0; j < columnCount; j++) {
					Cell ch = sheet.getCell(j, 0);
					Cell c = sheet.getCell(j, i);
					rowMap.put(ch.getContents().toString().trim(), c.getContents() != null ? c.getContents().toString().trim() : "");
				}
				rowList.add(rowMap);
			}
		} catch (BiffException e) {
			log.error("BiffException message: " + e.getMessage());
			e.printStackTrace();
		}
		return rowList;
	}

	@SuppressWarnings("rawtypes")
	public static List<Map<String, String>> readXlsFile(String filePath) throws IOException {
		List<Map<String, String>> rowList = new LinkedList<Map<String, String>>();
		InputStream ExcelFileToRead = new FileInputStream(filePath);
		HSSFWorkbook wb = new HSSFWorkbook(ExcelFileToRead);
		HSSFSheet sheet = wb.getSheetAt(0);
		HSSFRow row;
		HSSFCell cell;
		int i = 0, j = 0, cellCount = 1;
		Iterator rows = sheet.rowIterator();
		while (rows.hasNext()) {
			row = (HSSFRow) rows.next();
			if (i == 0) {
				Iterator cells = row.cellIterator();
				while (cells.hasNext()) {
					cell = (HSSFCell) cells.next();
					cellCount++;
				}
			} else {
				Map<String, String> rowMap = new HashMap<String, String>();
				HSSFRow headRow = sheet.getRow(0);
				j = 0;
				for (int k = 1; k < cellCount; k++) {
					HSSFCell headCell = (HSSFCell) headRow.getCell(j);
					String headValue = "", cellValue = "";
					if (headCell != null) {
						if (headCell.getCellType() == HSSFCell.CELL_TYPE_BLANK) {
							headValue = "";
						} else if (headCell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC) {
							headValue = Double.toString(headCell.getNumericCellValue());
						} else if (headCell.getCellType() == HSSFCell.CELL_TYPE_STRING) {
							headValue = headCell.getRichStringCellValue().toString();
						} else if (headCell.getCellType() == HSSFCell.CELL_TYPE_ERROR) {
							headValue = "";
						}
						cell = (HSSFCell) row.getCell(j);
						if (cell == null) {
							cellValue = "";
						} else {
							if (cell.getCellType() == HSSFCell.CELL_TYPE_BLANK) {
								cellValue = "";
							} else if (cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC) {
								if (DateUtil.isCellDateFormatted((org.apache.poi.ss.usermodel.Cell) cell)) {
									Date dateValue = (DateUtil.getJavaDate(cell.getNumericCellValue()));
									cellValue = new SimpleDateFormat("MM/dd/yyyy").format(dateValue);
								} else {
									long longValue = (long) cell.getNumericCellValue();
									cellValue = Long.toString(longValue);
								}
							} else if (cell.getCellType() == HSSFCell.CELL_TYPE_STRING) {
								cellValue = cell.getRichStringCellValue().toString().trim();
							} else if (cell.getCellType() == HSSFCell.CELL_TYPE_ERROR) {
								cellValue = "";
							}
						}
						rowMap.put(headValue, cellValue);
						j++;
					}
					rowList.add(rowMap);
				}
			}
			i++;
		}
		return rowList;
	}

	@SuppressWarnings("rawtypes")
	public static List<Map<String, String>> readXlsxFile(String filePath) throws IOException {
		List<Map<String, String>> rowList = new LinkedList<Map<String, String>>();
		InputStream ExcelFileToRead = new FileInputStream(filePath);
		XSSFWorkbook wb = new XSSFWorkbook(ExcelFileToRead);
		XSSFSheet sheet = wb.getSheetAt(0);
		XSSFRow row;
		XSSFCell cell;
		int i = 0, j = 0, cellCount = 0;
		Iterator rows = sheet.rowIterator();
		while (rows.hasNext()) {
			row = (XSSFRow) rows.next();
			if (i == 0) {
				Iterator cells = row.cellIterator();
				while (cells.hasNext()) {
					cell = (XSSFCell) cells.next();
					cellCount++;
				}
			} else {
				Map<String, String> rowMap = new HashMap<String, String>();
				XSSFRow headRow = sheet.getRow(0);
				j = 0;
				for (int k = 0; k < cellCount; k++) {
					XSSFCell headCell = (XSSFCell) headRow.getCell((short) j);
					String headValue = "", cellValue = "";
					if (headCell != null) {
						if (headCell.getCellType() == XSSFCell.CELL_TYPE_BLANK) {
							headValue = "";
						} else if (headCell.getCellType() == XSSFCell.CELL_TYPE_NUMERIC) {
							headValue = Double.toString(headCell.getNumericCellValue());
						} else if (headCell.getCellType() == XSSFCell.CELL_TYPE_STRING) {
							headValue = headCell.getRichStringCellValue().toString();
						} else if (headCell.getCellType() == XSSFCell.CELL_TYPE_ERROR) {
							headValue = "";
						}
						cell = (XSSFCell) row.getCell((short) j);
						if (cell == null) {
							cellValue = "";
						} else {
							if (cell.getCellType() == XSSFCell.CELL_TYPE_BLANK) {
								cellValue = "";
							} else if (cell.getCellType() == XSSFCell.CELL_TYPE_NUMERIC) {
								if (DateUtil.isCellDateFormatted((org.apache.poi.ss.usermodel.Cell) cell)) {
									Date dateValue = (DateUtil.getJavaDate(cell.getNumericCellValue()));
									cellValue = new SimpleDateFormat("MM/dd/yyyy").format(dateValue);
								} else {
									long longValue = (long) cell.getNumericCellValue();
									cellValue = Long.toString(longValue);
								}
							} else if (cell.getCellType() == XSSFCell.CELL_TYPE_STRING) {
								cellValue = cell.getRichStringCellValue().toString().trim();
							} else if (cell.getCellType() == XSSFCell.CELL_TYPE_ERROR) {
								cellValue = "";
							}
						}
						rowMap.put(headValue, cellValue);
						j++;
					}
					rowList.add(rowMap);
				}
			}
			i++;
		}
		return rowList;
	}

	public static void insertMarks(String fileType, String filePath,String subject, String studentClass, String examTitle, String examDate) throws IOException {
		ExamResultsService ExamService = (ExamResultsService) SpringService.getInstance().getBean("examResultsServiceImpl");
	
		Map<String, String> rowMap  = new HashMap<String, String>();
		List<Map<String, String>> rowList = new LinkedList<Map<String, String>>();
		if (fileType.equalsIgnoreCase("xlsx")) {
			rowList = ExcelReader.readXlsxFile(filePath);
		} else { 
			rowList = ExcelReader.readXlsFile(filePath);
		}
		
		for (int i = 0; i < rowList.size(); i++) {
			rowMap = rowList.get(i);
			ExamService.insertMarks(rowMap.get("rollNum"), rowMap.get("name"), subject, rowMap.get("marks"), studentClass, examTitle, examDate);
			System.out.println();
	}
		
		
}
}
