<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>Conference Registration Form</title>
    <style>
        h1,h6 {text-align: center;}
        .helper-text {
            font-size: 12px;
            color: #888;
            margin-right: 150px;
        }

        .name-fields input {
            margin-right: 50px;
        }
        label .required {
            color: red;
        }
        .form-inlines input,.form-inline select  {
            display: inline-block;
            width: 15%;
            margin-right: 1%;
        }
        .form-inline input:last-child, .form-inline select:last-child {
            margin-right: 0;
        }
        .c{
            width: 700px;
            float: left;
            margin-left: 20px;
        }
        .ca{
            width: 700px;
            float: left;
        }
    </style>
</head>
<body>
<h1>Conference Registration Form</h1>
<h6>Please fill in the form below. We'll contact you as soon as possible</h6>
<form action="processRegistration.jsp" method="post">
    <div class="c">
        <label>Full Name <span class="required">*</span></label>
        <div>
            <input type="text" id="firstname" name="firstname" required>
            <input type="text" id="lastname" name="lastname"  required>
        </div>
        <div class="helper-text">
            <span style="margin-right: 128px;">First name</span>
            <span class="helper-text">Last name</span>
        </div>
        <label>Area <span class="required">*</span></label>
        <br>
        <select name="area" id="area" required>
            <option value="">Please select</option>
            <option value="Marketing">Marketing</option>
            <option value="Sales">Sales</option>
            <option value="Finance">Finance</option>
            <option value="Technology">Technology</option>
        </select>
        </p>
        <div class="form-group">
            <label>Address <span class="required">*</span></label>
            <div class="form-inline">
                <input style="width: 53%;" type="text" id="street-address" name="street-address" required>
                <br>
                <div class="helper-text">
                    <span class="helper-text">Street Address</span>
                </div>
                <input style="width: 53%;" type="text" id="street-address2" name="street-address2">
                <div class="helper-text">
                    <span class="helper-text">Street Address Line 2</span>
                </div>
            </div>
            <br>
            <div>
                <input type="text" id="city" name="city" required>
                <input type="text" id="state" name="state" required>
                <br>
                <div class="helper-text">
                    <span style="margin-right: 165px;">City</span>
                    <span class="helper-text">State/Province</span>
                </div>

                <input type="text" id="postal-code" name="postal-code" required>
                <select id="country" name="country" required>
                    <option value="">Please Select</option>
                    <option value="Malaysia">Malaysia</option>
                    <option value="Singapore">Singapore</option>
                    <option value="Indonesia">Indonesia</option>
                    <option value="Brunei">Brunei</option>
                    <option value="Thailand">Thailand</option>
                </select>
                <br>
                <div class="helper-text">
                    <span style="margin-right: 100px;">Postal/Zip Code</span>
                    <span class="helper-text">Country</span>
                </div>
            </div>
        </div>
        <label>Email <span class="required">*</span></label>
        <div class="form-inline">
            <input type="text" id="Email" name="Email" placeholder="ex: myname@example.com" required>
            <div class="helper-text">
                <span class="helper-text">example@example.com</span>
            </div>
        </div>
        <br>
        <label>Phone Number <span class="required">*</span></label>
        <div class="form-inline">
            <input type="text" id="Number" name="Number" placeholder="(000)000-0000" required>
        </div>
    </div>
    <div class="ca">
        <label>First time to attend this conference? <span class="required">*</span></label>
        <div >
            <input type="radio" id="yes" name="attendance">
            <label for="yes">Yes</label><br>
            <input type="radio" id="no" name="attendance">
            <label for="No">No</label><br>
        </div>
        <br>
        <label>I will attend <span class="required">*</span></label>
        <div >
            <input type="checkbox" id="event 1" name="event1">
            <label>Event 1 - Date of event 1</label><br>
            <input type="checkbox" id="event 2" name="event2">
            <label>Event 2 - Date of event 2</label><br>
            <input type="checkbox" id="event 3" name="event3">
            <label>Event 3 - Date of event 3</label><br>
        </div>
        <br>
        <label>What's your T-shirt size? <span class="required">*</span></label>
        <br>
        <select id="t-shirt" name="t-shirt" required>
            <option value="">Please Select</option>
            <option value="S">S</option>
            <option value="M">M</option>
            <option value="L">L</option>
            <option value="XL">XL</option>
        </select>
        <br><br>
        <label>Registration Fee <span class="required">*</span></label>
        <br>
        <input type="radio" id="feenormal" name="attendance">
        <div>
            <label for="yes">Conference Registration Fee (Normal Participant)</label>
            <label class="participant" style="text-indent: 50px;"> 500.00MYR</label><br>
        </div>
        <div class="helper-text">
            <span class="helper-text" style="margin-right: 5px;"># of papers</span>

            <select id="normal" name="normal">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        <br>
        <input type="radio" id="feestudent" name="attendance">
        <div>
            <label for="yes">Conference Registration Fee (Student Participant)</label>
            <label id="normalParticipant"  style="text-indent: 50px;"> 300.00MYR</label><br>
        </div>
        <div class="helper-text">
            <span class="helper-text" style="margin-right: 5px;"># of papers</span>
            <select id="student" name="student">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select></div>
        <br>
        <div>
            <button style="background-color: blue; color: white;" type="button">Check The Total Amount</button>
            <label style="margin-left: 180px;"><%




            %></label>
        </div>
        <br>
        <button style="background-color: blue; color: white;" type="button">Search Tool</button>
        <input style="background-color: green;color: white; margin-left: 20px;" type="submit" value="Submit">
        <input style="background-color:gray; color: white;margin-left: 20px;" type="reset" value="Reset">
    </div>
    </div>
</form>
</body>
</html>