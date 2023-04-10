<%--
  Created by IntelliJ IDEA.
  User: imranov
  Date: 08/04/2023
  Time: 1:45 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="java.sql.*,java.util.*"%>
<%
    String firstname=request.getParameter("firstname");
    String lastname=request.getParameter("lastname");
    String area=request.getParameter("area");
    String address=request.getParameter("address");
    String address2=request.getParameter("address2");
    String city=request.getParameter("city");
    String state=request.getParameter("state");
    String postal=request.getParameter("postal");
    String country=request.getParameter("country");
    String email=request.getParameter("email");
    String phoneNo=request.getParameter("phoneNo");
    String firstTime=request.getParameter("firstTime");

    String chooseevent="";
    String[] event=request.getParameterValues("event");
    for(int i=0;i< event.length;i++){
        chooseevent+=event[i]+" ";
    }
    String size=request.getParameter("size");
    String type=request.getParameter("type");

    String registrationType = request.getParameter("registration");
    int numOfPapers=0;
    double registrationFee = 0;
    if(registrationType.equals("feenormal")) {
        registrationFee = 500.00;
        numOfPapers=Integer.parseInt(request.getParameter("normal"));

    } else if(registrationType.equals("feestudent")) {
        registrationFee = 300.00;
        numOfPapers=Integer.parseInt(request.getParameter("student"));

    }
    double total = registrationFee * numOfPapers;

    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conference_db", "root", "");
        Statement st=con.createStatement();
        Statement st2=con.createStatement();
        String query="INSERT INTO Participant(firstname,lastname,area,address1,address2,city,state,postal,country,email,phoneNo,firstTime,size,type,total)";
        st.executeUpdate("insert into Participant(firstname,lastname,area,address1,address2,city,state,postal,country,email,phoneNo,firstTime,size,type,total)" +
                "values("+firstname+","+lastname+","+area+","+address+","+address2+","+city+","+state+","+postal+","+country+","+country+","+email+","+phoneNo+","+firstTime+","+size+","+type+","+total+")");
        st2.executeUpdate("insert into Event(eventId)values ("+chooseevent+")");
        System.out.println("Data is successfully inserted!");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>

