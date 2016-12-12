<%@ page import="java.util.*" %>

<html>
<head>

<title>Do it myself</title>

</head>

<body>

   <!--    step1: build form  -->
   <form action="session.jsp">
    Add new item:<input type="text" name="theItem"/>
                 <input type="submit" value="Submit"/>
   </form>
   <hr>
   <!--    step2: get the parameter -->
   Items: <%= request.getParameter("theItem") %>
   <hr>
   <% 
        List<String> items = (List<String>)session.getAttribute("toDoList");
        //first request must be null 
        if(items == null) {
        	items = new ArrayList<String>();
        	session.setAttribute("toDoList", items);
        }
   
        String oneItem = request.getParameter("theItem");         
        if(items!= null) {
              items.add(oneItem);
        }
        
   %>

   
   <b>To-Do List</b><br/>
   
   <ol>
   <%
   for(String temp :items) {
	 out.println("<li>" + temp + "</li>");     
   } 
   %>
   </ol>
   
   
</body>
     

</html>
