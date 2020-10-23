<%

   
   try{
	   String mobile=request.getParameter("mobile");
		String uotp=request.getParameter("uotp");
		System.out.println("user otp = "+uotp);
		   String cotp=request.getParameter("cotp");
		   System.out.println("computer otp = "+cotp);
	   if(uotp.equals(cotp)){
		   			
		   response.sendRedirect("signup.jsp?mobile="+mobile);
	   }else{
		   response.sendRedirect("otpverifyfail.jsp");
	   }
	   
	   
   }catch(Exception e){
	   e.printStackTrace();
   }
   




%>