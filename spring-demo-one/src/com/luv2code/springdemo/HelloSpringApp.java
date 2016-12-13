package com.luv2code.springdemo;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloSpringApp {

	public static void main(String[] args) {
		
	// load the spring configuration file **Spring Container is generally known as ApplicationContext**
	  ClassPathXmlApplicationContext context = 
			  new  ClassPathXmlApplicationContext("applicationContext.xml");	
	//retrieve bean from spring container
      Coach theCoach = context.getBean("myCoach",Coach.class);
    // call methods on the bean
	  System.out.println(theCoach.getDaliyWorkout());	
    // close the context
      context.close();
	}

}
