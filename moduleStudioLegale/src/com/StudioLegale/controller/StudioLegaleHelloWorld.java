package com.StudioLegale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
/*
 * author: 
 * 
 */
 

@Controller
public class StudioLegaleHelloWorld {
 
	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
 
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>*****welcome controller***** Ciao:</h3>Questo messaggio viene dal Controller della classe StudioLegaleHelloWorld.java **********</div><br><br>";
		return new ModelAndView("welcome", "message", message);
	}

	@RequestMapping("/index")
	public ModelAndView index() {
		System.out.println("INDEXXXXXXXXXXXXXXXXXXX2 \n");
//		String message = "<br><div style='text-align:center;'>"
//				+ "<h3>*****welcome controller***** Ciao:</h3>Questo messaggio viene dal Controller della classe StudioLegaleHelloWorld.java **********</div><br><br>";
		return new ModelAndView("index");
	}

	

	@RequestMapping("/login")
	public ModelAndView login() {
 
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>*****login Controller***** Ciao:</h3>Questo messaggio viene dal Controller della classe StudioLegaleHelloWorld.java **********</div><br><br>";
		return new ModelAndView("login", "message", message);
	}

	@RequestMapping("/dashboard")
	public ModelAndView dashboard() {
 
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>*****login Controller***** Ciao:</h3>Questo messaggio viene dal Controller della classe StudioLegaleHelloWorld.java **********</div><br><br>";
		return new ModelAndView("dashboard", "message", message);
	}
	

	
//	private static void getEmployees()
//	{
//	   // final String uri = "http://localhost:8080/springrestexample/employees.xml";
//		 final String uri = "http://localhost:8081/RestOCC/rest/payment/occ";
//	    
////	    RestTemplate restTemplate = new RestTemplate();
////	    String result = restTemplate.getForObject(uri, String.class);
//	     
//	    System.out.println(result);
//	}
	
	
	//This RESTful client code will access above API and print the response in console.
//	private static void savePayment()
//	{
//		final String uri = "http://localhost:8081/RestOCC/rest";
//		
//	Client client = ClientBuilder.newClient( new ClientConfig().register( LoggingFilter.class ) );
//	WebTarget webTarget = client.target(uri).path("payment").path("occ");
//	 
//	Invocation.Builder invocationBuilder =  webTarget.request(MediaType.APPLICATION_XML);
//	Response response = invocationBuilder.get();
//	 
//	Employee employee = response.readEntity(Employee.class);
//	     
//	System.out.println(response.getStatus());
//	System.out.println(employee);
//	}
	//FUNZIONA !!!!!!!!!
	@RequestMapping("/dashboard_2")
	public ModelAndView savePayment2() {
		Client client = Client.create();

		WebResource webResource = client
		   .resource("http://localhost:8081/RestOCC/rest/payment/occ");

		ClientResponse response = webResource.accept("application/json")
                   .get(ClientResponse.class);

		if (response.getStatus() != 200) {
		   throw new RuntimeException("Failed : HTTP error code : "
			+ response.getStatus());
		}

		String output = response.getEntity(String.class);

		System.out.println("Output from Server .... :");
		System.out.println(output);
		
		// ritorna la dashboard.jsp che stampa la variabile output che viene dal servizio rest
		ModelAndView modelAndView = new ModelAndView("dashboard");
		if(output!=null){
			modelAndView.addObject("output", output);
		}
		
//		String message = "<br><div style='text-align:center;'>"
//				+ "<h3>*****login Controller***** Ciao:</h3>Questo messaggio viene dal Controller della classe StudioLegaleHelloWorld.java **********</div><br><br>";
//		return new ModelAndView("dashboard", "message", message);
		
		return modelAndView;
	}
	
	
	

	
}