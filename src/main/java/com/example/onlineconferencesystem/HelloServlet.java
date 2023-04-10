package com.example.onlineconferencesystem;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.DriverManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/register")
public class HelloServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
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
        System.out.println(registrationType);
        int numOfPapers=0;
        double registrationFee = 0;
        if(registrationType.equals("feenormal")) {
            registrationFee = 500.00;
            numOfPapers=Integer.parseInt(request.getParameter("normal"));

        } else if(registrationType.equals("feestudent")) {
            registrationFee = 300.00;
            numOfPapers=Integer.parseInt(request.getParameter("student"));

        }
        //double total = registrationFee * numOfPapers;
        double total =1;


        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conference_db", "root", "");
            PreparedStatement st=con.prepareStatement("insert into Participant(firstname,lastname,area,address1,address2,city,state,postal,country,email,phoneNo,firstTime,event,size,type,total)"+
                    "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            st.setString(1,firstname);
            st.setString(2,lastname);
            st.setString(3,area);
            st.setString(4,address);
            st.setString(5,address2);
            st.setString(6,city);
            st.setString(7,state);
            st.setString(8,postal);
            st.setString(9,country);
            st.setString(10,email);
            st.setString(11,phoneNo);
            st.setString(12,firstTime);
            st.setString(13,chooseevent);
            st.setString(14,size);
            st.setString(15,type);
            st.setDouble(16,total);
            st.executeUpdate();

            //Statement st2=con.createStatement();
            //String query="INSERT INTO Participant(firstname,lastname,area,address1,address2,city,state,postal,country,email,phoneNo,firstTime,size,type,total)";
            //st.executeUpdate("insert into Participant(firstname,lastname,area,address1,address2,city,state,postal,country,email,phoneNo,firstTime,event,size,type,total)" +
            //        "values("+firstname+","+lastname+","+area+","+address+","+address2+","+city+","+state+","+postal+","+country+","+email+","+phoneNo+","+firstTime+","+chooseevent+","+size+","+type+","+total+")");
            //st2.executeUpdate("insert into Participant_Event(participantId,eventId)values ("+participantId+","+chooseevent+")");
            st.close();
            con.close();
            PrintWriter out=response.getWriter();
            out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
            System.out.print(e);
            e.printStackTrace();
        }
    }


}