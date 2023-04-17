<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*,java.util.*"%>

<html>
<head>
    <title>Search Tool</title>
</head>
<body>
<form>
    <div >
        <input type="radio" name="view" value="all">
        <label>View all Participants</label><br>
        <input type="radio"  name="view" value="student">
        <label>View all student</label><br>
        <input type="radio" name="view" value="normal">
        <label>View all normal</label><br>
    </div>
    <br>
    <input style="background-color: blue; color: white;" type="submit" value="View">
    <br>
    <div>
        <label>Insert Registered Participant Name</label><br>
        <input type="text" id="field" name="field">
        <br>
        <br>
        <div>
            <input style="background-color: blue; color: white;" name="button" type="submit" value="Search">
            <input style="background-color: red; color: white;" name="button" type="submit" value="Remove">
        </div>
    </div>
    <br>
    <button style="background-color: blue; color: white;margin-left: 70px;" type="button" onclick="location.href='index.jsp';">  back  </button>
</form>
<%
    String viewType = request.getParameter("view");
    String searchQuery = request.getParameter("field");
    String button = request.getParameter("button");
    String query="";

    if (button != null && button.equals("Remove") && searchQuery != null && !searchQuery.isEmpty()) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conference_db?autoReconnect=true&useSSL=false", "root", "");
            PreparedStatement ps = con.prepareStatement("DELETE FROM conference_db.Participant WHERE firstName = ? OR lastName = ?");
            ps.setString(1, searchQuery);
            ps.setString(2, searchQuery);
            int deletedRows = ps.executeUpdate();
            String message = " record(s) deleted.";

%>
<script type="text/javascript">
    alert("<%= deletedRows + message %>");
    window.location.href = "search.jsp";

</script>
<%
        } catch (Exception e) {
            out.print("An error occurred: " + e.getMessage());
        }
    } else {
        if (searchQuery != null && !searchQuery.isEmpty()) {
            query = "SELECT * FROM conference_db.Participant WHERE firstName LIKE '%" + searchQuery + "%' OR lastName LIKE '%" + searchQuery + "%'";
        } else if (viewType == null || viewType.equals("all")) {
            query = "SELECT * FROM conference_db.Participant";
        } else if (viewType.equals("student")) {
            query = "SELECT * FROM conference_db.Participant WHERE type='student'";
        } else {
            query = "SELECT * FROM conference_db.Participant WHERE type='normal'";
        }
    }
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conference_db?autoReconnect=true&useSSL=false", "root", "");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);
        if (rs.next()) {
            out.print("<table border='1'>");
            out.print("<tr><th>Participant ID</th><th>First Name</th><th>Last Name</th><th>Area</th><th>Address 1</th><th>Address 2</th><th>City</th><th>State</th><th>Postal</th><th>Country</th><th>Email</th><th>Phone No</th><th>First Time</th><th>Event</th><th>Size</th><th>Type</th><th>Total</th></tr>");
            do {
                int id = rs.getInt("participantId");
                String firstname = rs.getString("firstName");
                String lastname = rs.getString("lastName");
                String area = rs.getString("area");
                String address1 = rs.getString("address1");
                String address2 = rs.getString("address2");
                String city = rs.getString("city");
                String state = rs.getString("state");
                String postal = rs.getString("postal");
                String country = rs.getString("country");
                String email = rs.getString("email");
                String phoneNo = rs.getString("phoneNo");
                String firstTime = rs.getString("firstTime");
                String event = rs.getString("event");
                String size = rs.getString("size");
                String type = rs.getString("type");
                double total = rs.getDouble("total");
                out.print("<tr><td>" + id + "</td><td>" + firstname + "</td><td>" + lastname + "</td><td>" + area + "</td><td>" + address1 + "</td><td>" + address2 + "</td><td>" + city + "</td><td>" + state + "</td><td>" + postal + "</td><td>" + country + "</td><td>" + email + "</td><td>" + phoneNo + "</td><td>" + firstTime + "</td><td>" + event + "</td><td>" + size + "</td><td>" + type + "</td><td>" + total + "</td></tr>");
            } while (rs.next());
            out.print("</table>");
        } else {
            out.print("No results found.");
        }
    } catch(Exception e) {
        out.print("An error occurred: " + e.getMessage());
    }
%>

</body>
</html>