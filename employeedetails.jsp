<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Process From</title>
</head>
<body>
 <body>
 <h>Process From </h>
    <%
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");   
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        boolean hasError = false;
        String errorMessage = "لطفاً تمام فیلدها را پر کنید.";

        if (firstname == null || firstname.isEmpty()||
        	lastname == null || lastname.isEmpty() ||	
        	username == null || username.isEmpty() || 
            password == null || password.isEmpty() || 
            address == null || address.isEmpty()||
            contact == null || contact.isEmpty()) {
            hasError = true;
        }
    %>

    <%
        if (hasError) {
    %>
        <p style="color:red;"><%= errorMessage %></p>
        <a href="employeeregister.jsp">بازگشت به فرم ثبت‌نام</a>
    <%
        } else {
    %>
        <h2>اطلاعات ثبت‌شده</h2>
        <p>نام: <%=firstname %></p>
        <p>نام خانوادگی: <%=lastname%></p>
        <p>نام کاربری: <%= username %></p>
        <p>رمز ورود: <%= password %></p>
        <p>ادرس: <%= address %></p>
        <p>شماره تماس <%= contact %></p>
    <%
        }
    %>
</body>
</body>
</html>
</html>