

<!DOCTYPE html>

<%
    String username = request.getParameter("username");
    String id = request.getParameter("id");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String pass = request.getParameter("password");
    String gender = request.getParameter("rd");
    String birthday = request.getParameter("birthday");
    int radio = -1;
        try {
            radio = Integer.parseInt(request.getParameter("rd"));
        } catch (Exception e) {
           
        }
        switch (radio) {
        case 0:
            gender = "Male";
           
        case 1:
            gender = "Female";
           
        }
        
    
%>
<html>
    <head>
       <link rel="stylesheet" type="text/css" href="styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Profile</title>
    </head>
    <body>
       <jsp:useBean id="store" 
                    class="com.mycompany.mid_ex_2.Store"> 
   <jsp:setProperty name="store" property="username"
                    value="<%= username%>"/>
   <jsp:setProperty name="store" property="password" 
                    value="<%= pass%>"/>
   <jsp:setProperty name="store" property="id"
                    value="<%= id%>"/>
   <jsp:setProperty name="store" property="gender" 
                    value="<%= gender%>"/>
   <jsp:setProperty name="store" property="birthday" 
                    value="<%= birthday%>"/>
   <jsp:setProperty name="store" property="email" 
                    value="<%= email%>"/>
                    
</jsp:useBean>
       <div id="container">
            <div id="header">
       
        <table border="0.1">
            <thead>
                <tr>
                        <th></th>
                        <th>USER PROFILE BY JAVA BEANS</th>
                    </tr>
            </thead>
            <tbody>
              
                <tr>
                     <td>Name: </td>
                    <td><jsp:getProperty name="store" property="name"/></td>
                </tr>
                <tr>
                     <td>Username: </td>
                    <td><jsp:getProperty name="store" property="username"/></td>
                </tr>                
                <tr>
                     <td>Email: </td>
                    <td><jsp:getProperty name="store" property="email"/></td>
                </tr>
                <tr>
                     <td>ID: </td>
                    <td><jsp:getProperty name="store" property="id"/></td>
                </tr>  
                <tr>
                     <td>Address: </td>
                    <td></td>
                </tr> 
                <tr>
                     <td>Gender: </td>
                    <td><jsp:getProperty name="store" property="gender"/></td>
                </tr>
                <tr>
                     <td>Birthday: </td>
                    <td><jsp:getProperty name="store" property="birthday"/></td>
                </tr>
                
                
            </tbody>
        </table>
        <form name="Return to main page" action="index.jsp" method="GET">
            <input type="submit" value="Return to Login page">
        </form>
            </div></div>
    </body>
</html>
