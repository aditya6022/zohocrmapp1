package com.zoho.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zoho.entities.Billing;
import com.zoho.entities.Contacts;
import com.zoho.entities.Lead;
import com.zoho.services.BillingService;
import com.zoho.services.ContactService;

@Controller
public class BillingController {

	  @Autowired
	  private ContactService contactService;
	  
	  @Autowired
	  private BillingService billingService;
	  
	  @RequestMapping("/billingForm")
	  public String viewBillingForm(@RequestParam("contactId") long id, Model model) {
		 
		  Contacts contact = contactService.findContactById(id);
		 
		  model.addAttribute("contact", contact);
		  
         
		  
		  contactService.saveContactInformation(contact);
		  
		  return "create_bill";
	  }
	  
	  @RequestMapping("/generateBill")
	  public String viewBillingForm(Billing billing,Model model) {
		  
             billingService.generateInvoice(billing);		
             
             List<Billing> billings = billingService.getAllBillings();
 			
   	          model.addAttribute("billings", billings);
   			   
				   
		      return "list_bills";

	  }
		  
		  @RequestMapping("/listbills")
		  public String getAllBillList(Model model) {
		 
		  List<Billing> billings = billingService.getAllBillings();
			
	      model.addAttribute("billings", billings);
			   
	      return "list_bills";
	  
	  
		  }
		   
		  
	  
}