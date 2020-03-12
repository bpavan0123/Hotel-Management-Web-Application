<html>
    <body>
        <% 
            request.getSession().invalidate();
         response.sendRedirect("home.html");
        %>
    </body>
</html>