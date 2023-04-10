<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
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
            /*margin-right: 150px;*/
        }

        /*.name-fields input {
            margin-right: 50px;
        }*/
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
            width: 500px;
            float: left;
            margin-left: 200px;
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
<form action="insert.jsp" method="post" >
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
                <input style="width: 53%;" type="text" id="address" name="address" required>
                <br>
                <div class="helper-text">
                    <span class="helper-text">Street Address</span>
                </div>
                <input style="width: 53%;" type="text" id="address2" name="address2">
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

                <input type="text" id="postal" name="postal" required>
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
            <input type="text" id="email" name="email" placeholder="ex: myname@example.com" required>
            <div class="helper-text">
                <span class="helper-text">example@example.com</span>
            </div>
        </div>
        <br>
        <label>Phone Number <span class="required">*</span></label>
        <div class="form-inline">
            <input type="text" id="phoneNo" name="phoneNo" placeholder="(000)000-0000" required>
        </div>
    </div>
    <div class="ca">
        <label>First time to attend this conference? <span class="required">*</span></label>
        <div >
            <input type="radio" id="yes" name="firstTime">
            <label for="yes">Yes</label><br>
            <input type="radio" id="no" name="firstTime">
            <label for="No">No</label><br>
        </div>
        <br>
        <label>I will attend <span class="required">*</span></label>
        <div >
            <input type="checkbox" value="1" name="event">
            <label>Event 1 - Date of event 1</label><br>
            <input type="checkbox" value="2" name="event">
            <label>Event 2 - Date of event 2</label><br>
            <input type="checkbox" value="3" name="event">
            <label>Event 3 - Date of event 3</label><br>
        </div>
        <br>
        <label>What's your T-shirt size? <span class="required">*</span></label>
        <br>
        <select id="size" name="size" required>
            <option value="">Please Select</option>
            <option value="S">S</option>
            <option value="M">M</option>
            <option value="L">L</option>
            <option value="XL">XL</option>
        </select>
        <br><br>
        <label>Registration Fee <span class="required">*</span></label>
        <br>

    <!--   <div>
        <input type="radio" id="feeNormal" name="registration">
        <div>
            <label for="yes">Conference Registration Fee (Normal Participant)</label>
            <label class="participant" style="text-indent: 50px;"> 500.00MYR</label><br>
        </div>
       </div>
        <div class="helper-text">
            <span class="helper-text" style="margin-right: 5px;"># of papers</span>

            <select name="normal">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        <br>
        <div>
        <input type="radio" id="feeStudent" name="registration">
        <div>
            <label for="yes">Conference Registration Fee (Student Participant)</label>
            <label id="normalParticipant"  style="text-indent: 50px;"> 300.00MYR</label><br>
        </div>
        </div>
        <div class="helper-text">
            <span class="helper-text" style="margin-right: 5px;"># of papers</span>
            <select name="student">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select></div>
        <br>
-->
        <!--    <script>
             function calculateTotal() {
                 let normalChecked = document.getElementById("feeNormal").checked;
                 let studentChecked = document.getElementById("feeStudent").checked;
                 let normalPapers = document.getElementById("normal").value;
                 let studentPapers = document.getElementById("student").value;
                 let total = 0;
                 if (normalChecked) {
                     total += 500 * normalPapers;
                 }
                 if (studentChecked) {
                     total += 300 * studentPapers;
                 }

                 return total;
             }

             let button = document.querySelector('button');
             button.addEventListener('click', function() {
                 let total = calculateTotal();
                 let label = document.querySelector('label');
                 label.innerHTML = "Total: " + total + " MYR";
             });
         </script>-->
        <!--<script>
        function calculateTotal() {
            let total = 0;
            let conferenceType = "";
            let papers = 0;

            // get the conference type
            if (document.getElementById("feeNormal").checked) {
                conferenceType = "normal";
            } else if (document.getElementById("feeStudent").checked) {
                conferenceType = "student";
            }

            // get the number of papers
            if (conferenceType === "normal") {
                papers = document.getElementById("normal").value;
            } else if (conferenceType === "student") {
                papers = document.getElementById("student").value;
            }

            // calculate the total amount
            if (conferenceType === "normal") {
                total = papers * 500;
            } else if (conferenceType === "student") {
                total = papers * 300;
            }

            // display the total amount
            document.getElementById("totalAmount").innerHTML = "Total amount: " + total + "MYR";
        }
    </script> -->
       <!-- <div>
            <button style="background-color: blue; color: white;" type="button" onclick="calculateTotal()">Check The Total Amount</button>
           <label style="margin-left: 180px;">Total  "" + 'MYR'</label>
       </div>
        -->
        <div>
            <input type="radio" value="500" id="feenormal" name="registration">
            <div>
                <label for="yes">Conference Registration Fee (Normal Participant)</label>
                <label class="participant" style="text-indent: 50px;"> 500.00MYR</label><br>
            </div>
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
        <div>
            <input type="radio" value="300" id="feestudent" name="registration">
            <div>
                <label for="yes">Conference Registration Fee (Student Participant)</label>
                <label id="normalParticipant" style="text-indent: 50px;">300.00MYR</label><br>
            </div>
        </div>
        <div class="helper-text">
            <span class="helper-text" style="margin-right: 5px;"># of papers</span>
            <select id="student" name="student">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        <br>
        <div>
            <button style="background-color: blue; color: white;" type="button">Check The Total Amount</button>
            <label id="totalLabel" style="margin-left: 180px;">Total  0.00 MYR</label>
        </div>

        <script>
            function calculateTotal() {
                var normalFee = 500;
                var studentFee = 300;
                var normalPapers = document.getElementById("normal").value;
                var studentPapers = document.getElementById("student").value;
                var selectedFee, selectedPapers;

                if (document.getElementById("feenormal").checked) {
                    selectedFee = normalFee;
                    selectedPapers = normalPapers;
                } else if (document.getElementById("feestudent").checked) {
                    selectedFee = studentFee;
                    selectedPapers = studentPapers;
                }

                var totalAmount = selectedFee * selectedPapers;
                return totalAmount;
            }

            document.querySelector("button").addEventListener("click", function() {
                var totalAmount = calculateTotal();
                var totalLabel = document.getElementById("totalLabel");
                totalLabel.innerHTML = "Total " + totalAmount + "  MYR";
            });
        </script>

        <br>
       <button style="background-color: blue; color: white;" type="button" onclick="location.href='search.jsp';">Search Tool</button>
       <input style="background-color: green;color: white; margin-left: 20px;" type="submit" value="Submit">
       <input style="background-color:gray; color: white;margin-left: 20px;" type="reset" value="Reset">
   </div>
   </div>
</form>
</body>
</html>