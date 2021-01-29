package com.myBatis.dao;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myBatis.beans.emp;
import com.myBatis.myapp.HomeController;

@Controller
public class EmpController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@Inject
	 EmpService empService;
	
	 @RequestMapping("/empform")  
	    public String showform(Model m){  
	    	m.addAttribute("command", new emp());
	    	return "empform"; 
	 } 
	 @RequestMapping(value="/save",method = RequestMethod.POST)  
	    public String save(@ModelAttribute("emp") emp emp) throws Exception{  
	        empService.insertCafe(emp);  
	        return "redirect:/viewemp";//will redirect to viewemp request mapping  
	    }  
	    
	    
	    /* It provides list of employees in model object */  
	    @RequestMapping("/viewemp")  
	    public String viewemp(Model m) throws Exception{  
	        List<emp> list=empService.selectCafes();  
	        m.addAttribute("list",list);
	        return "viewemp";  
	    } 

	    /* It deletes record for the given id in URL and redirects to /viewemp */  
	    @RequestMapping(value="/deleteemp/{id}",method = RequestMethod.GET)  
	    public String delete(@ModelAttribute("emp") emp emp) throws Exception{  
	        empService.deleteCafe(emp);  
	        return "redirect:/viewemp";  
	    }   
}
