package com.shiva.service;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringService {
	private static SpringService instance = null;
	private ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("SchoolAppContext.xml");
	//private ApplicationContext ac =new FileSystemXmlApplicationContext("D:/school_app/SchoolApp/src/AplicationContext.xml");
	private SpringService() {
		super();
	}

	public static SpringService getInstance() {
		if (instance == null) {
			instance = new SpringService();
		}
		return instance;
	}

	public Object getBean(final String beanName) {
		return ctx.getBean(beanName);
	}

}
