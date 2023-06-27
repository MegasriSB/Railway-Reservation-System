<%@ page import = "java.sql.*"%> <% String name = request.getParameter("pname");
try{ String connectionURL = "jdbc:mysql://localhost:3306/railway"; Connection
conn = null; Class.forName("com.mysql.jdbc.Driver").newInstance(); Connection
conn = DriverManager.getConnection(connectionURL,"root","Madurai@123");
Statement st = conn.createStatement(); PreparedStatement ps =
conn.prepareStatement("delete from booking4 where name=?");
ps.setString(1,name); int x = ps.executeUpdate(); if(x!=0){
response.sendRedirect("cancel.html"); } else{ out.print("Something went
wrong..."); } } catch(Exception e){ out.print(e); } %>
