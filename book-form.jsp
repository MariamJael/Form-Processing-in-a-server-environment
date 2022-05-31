<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Added</title>
</head>
<body>

<br><br/>
The following book has been added: 
<br><br/>
Book Title: ${param.bookTitle} <br>
Author: ${param.bookAuthor}<br>
ISBN: ${param.isbn}<br>
Publisher: ${param.publisher}<br>
Type: ${param.type}<br>
Subject: 


<%

 String[] subject= request.getParameterValues("subject");
  
 //Checking if subject is not empty 
 if(subject!=null){
	 
     for (String bookSubject: subject){	  
	    //When array has only one element
	    if(subject.length==1){
		  out.print(bookSubject);
	    }
	    //when array has more than one element
	    else{
		    //when it is the last element of the array it will not print a comma
		    if (bookSubject==subject[subject.length-1]){
			  out.print(bookSubject);
			  }
		    else{
			  out.print(bookSubject+", ");
		    }		 
	    }	 	  
     }//end of for loop
  }
%>


<br>
Price: $ ${param.price}
 




</body>
</html>