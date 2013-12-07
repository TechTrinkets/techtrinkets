
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <script type="text/javascript">
            function validate() {

                var valid = true

                // validate first name
                var firstname = get('firstname').value
                get('firstnameFlag').innerHTML = ''
                if (!/^[a-zA-Z]+$/.test(firstname)) {
                    valid = false
                    get('firstnameFlag').innerHTML = 'First name can contain only a-z and A-Z.'
                }

                //validate last name
                var lastname = get('lastname').value;
                get('lastnameFlag').innerHTML = '';
                if (!/^[ \-a-zA-Z]+$/.test(lastname)) {
                    valid = false;
                    get('lastnameFlag').innerHTML = 'Last name can contain only a-z and  A-Z.'
                }

                // validate userid
                var userid = get('username').value
                get('usernameFlag').innerHTML = ''
                if (!/^[a-zA-Z0-9]+$/.test(userid)) {
                    valid = false
                    get('usernameFlag').innerHTML = 'Userid can contain only a-z, A-Z, and 0-9.'
                }

                //validate email
                var email1 = get('email').value;
                get('emailFlag').innerHTML = '';
                if (!/^[a-zA-Z0-9@.]+$/.test(email1)) {
                    valid = false;
                    get('emailFlag').innerHTML = 'Email can contain only a-z, A-Z, 0-9, period, and @.';
                }

                //validate email2
                var email2 = get('confirmemail').value;
                get('confirmemailFlag').innerHTML = '';
                if (!/^[a-zA-Z0-9@.]+$/.test(email2)) {
                    valid = false;
                    get('confirmemailFlag').innerHTML = 'Email can contain only a-z, A-Z, 0-9, period, and @.';
                }
                else if (email1 !== email2)
                {
                    valid = false;
                    get('confirmemailFlag').innerHTML = get('confirmemailFlag').innerHTML + ' Email1 must match email2.';
                }

                //validate phone
                var phone = get('phonenumber').value;
                get('phonenumberFlag').innerHTML = '';
                if (!/^[ \-0-9]+$/.test(phone)) {
                    valid = false;
                    get('phonenumberFlag').innerHTML = 'Phone number can contain only 0-9, space, and hyphen.';
                }

                //validate street
                var streetadd = get('streetadd').value;
                get('streetaddFlag').innerHTML = '';
                if (!/^[ a-zA-Z0-9]+$/.test(streetadd)) {
                    valid = false;
                    get('streetaddFlag').innerHTML = 'Street address can contain only a-z, A-Z, space, and 0-9.';
                }

                //validate city
                var city = get('city').value;
                get('cityFlag').innerHTML = '';
                if (!/^[ \-a-zA-Z]+$/.test(city)) {
                    valid = false;
                    get('cityFlag').innerHTML = 'City can contain only a-z and  A-Z.'
                }

                // validate zipcode
                var zipcode = get('zipcode').value
                get('zipcodeFlag').innerHTML = ''
                if (!/^[0-9]+$/.test(zipcode)) {
                    valid = false
                    get('zipcodeFlag').innerHTML = 'Zipcode can contain only 0-9.'
                }


                //validate pwd
                var pwd = get('pwd').value;
                get('pwdFlag').innerHTML = '';
                if (!/^[a-zA-Z0-9\-]+$/.test(pwd)) {
                    valid = false;
                    get('pwdFlag').innerHTML = 'Password can contain only a-z, A-Z, 0-9, and hyphen.';
                }

                //validate pwd
                var pwd2 = get('confirmpwd').value;
                get('confirmpwdFlag').innerHTML = '';
                if (!/^[a-zA-Z0-9\-]+$/.test(pwd2)) {
                    valid = false;
                    get('confirmpwdFlag').innerHTML = 'Password can contain only a-z, A-Z, 0-9, and hyphen.';
                }
                else if (pwd !== pwd2) {
                    valid = false;
                    get('confirmpwdFlag').innerHTML = get('confirmpwdFlag').innerHTML + 'Passwords must match.';
                }

                //validate question
                var question = get('question').value;
                get('questionFlag').innerHTML = '';
                if (!/^[ a-zA-Z0-9\-?]+$/.test(question)) {
                    valid = false;
                    get('questionFlag').innerHTML = 'Security question can contain only a-z, A-Z, 0-9, hyphen, space, and question mark.';
                }

                //validate answer
                var answer = get('answer').value;
                get('answerFlag').innerHTML = '';
                if (!/^[ a-zA-Z0-9\-]+$/.test(answer)) {
                    valid = false;
                    get('answerFlag').innerHTML = 'Security answer can contain only a-z, A-Z, 0-9, space, and hyphen.';
                }

                return valid;

            }

            function get(id) {
                return document.getElementById(id);
            }
        </script>

        <title>Create an Account</title>

    </head>
    <body>

        <div id="container">

            <%@include file="header.jsp" %>

            <div id="content">
                <h2>Register Here:</h2>

                <form id="form2" action="controller?action=register" onsubmit="return validate()" method="post">

                    <p>First Name: <input type="text" name="firstname" id="firstname" > <span id="firstnameFlag" class="flag"></span></p>
                    <p>Last Name: <input type="text" name="lastname" id="lastname"> <span id="lastnameFlag" class="flag"></span></p>
                    <p>User Name: <input type="text" name="username" id="username"> <span id="usernameFlag" class="flag"></span></p>

                    <p>Email Address: <input type="text" name="email" id="email"> <span id="emailFlag" class="flag"></span> </p>
                    <p>Confirm Email: <input type="text" name="confirmemail" id="confirmemail"> <span id="confirmemailFlag" class="flag"></span> </p>

                    <p>Phone Number: <input type="text" name="phonenumber" id="phonenumber"> <span id="phonenumberFlag" class="flag"></span></p>

                    <p>Street Address: <input type="text" name="streetadd" id="streetadd"> <span id="streetaddFlag" class="flag"></span></p>
                    <p>City: <input type="text" name="city" id="city"> <span id="cityFlag" class="flag"></span> </p>
                    <p>State: <select name="state" size="1" id="state"> <span id="stateFlag" class="flag"></span>
                            <option selected value=""> </option>
                            <option value="AL">AL</option>
                            <option value="AK">AK</option>
                            <option value="AZ">AZ</option>
                            <option value="AR">AR</option>
                            <option value="CA">CA</option>
                            <option value="CO">CO</option>
                            <option value="CT">CT</option>
                            <option value="DE">DE</option>
                            <option value="DC">DC</option>
                            <option value="FL">FL</option>
                            <option value="GA">GA</option>
                            <option value="HI">HI</option>
                            <option value="ID">ID</option>
                            <option value="IL">IL</option>
                            <option value="IN">IN</option>
                            <option value="IA">IA</option>
                            <option value="KS">KS</option>
                            <option value="KY">KY</option>
                            <option value="LA">LA</option>
                            <option value="ME">ME</option>
                            <option value="MD">MD</option>
                            <option value="MA">MA</option>
                            <option value="MI">MI</option>
                            <option value="MN">MN</option>
                            <option value="MS">MS</option>
                            <option value="MO">MO</option>
                            <option value="MT">MT</option>
                            <option value="NE">NE</option>
                            <option value="NV">NV</option>
                            <option value="NH">NH</option>
                            <option value="NJ">NJ</option>
                            <option value="NM">NM</option>
                            <option value="NY">NY</option>
                            <option value="NC">NC</option>
                            <option value="ND">ND</option>
                            <option value="OH">OH</option>
                            <option value="OK">OK</option>
                            <option value="OR">OR</option>
                            <option value="PA">PA</option>
                            <option value="RI">RI</option>
                            <option value="SC">SC</option>
                            <option value="SD">SD</option>
                            <option value="TN">TN</option>
                            <option value="TX">TX</option>
                            <option value="UT">UT</option>
                            <option value="VT">VT</option>
                            <option value="VA">VA</option>
                            <option value="WA">WA</option>
                            <option value="WV">WV</option>
                            <option value="WI">WI</option>
                            <option value="WY">WY</option>

                        </select> </p>

                    <p>Zip Code: <input type="text" name="zipcode" id="zipcode"> <span id="zipcodeFlag" class="flag"></span> </p>
                    <p>Password: <input type="password" name="pwd" id="pwd"> <span id="pwdFlag" class="flag"></span></p>
                    <p>Confirm Password: <input type="password" name="confirmpwd" id="confirmpwd"> <span id="confirmpwdFlag" class="flag"></span></p>
                    <p>Secret Question: <input type="text" name="question" id="question"> <span id="questionFlag" class="flag"></span></p>
                    <p>Secret Answer: <input type="text" name="answer" id="answer"> <span id="answerFlag" class="flag"></span></p>
                    <p><input type="submit" value="Register" name="action"></span></p>
                </form>
            </div>

            <%@include file="footer.jsp" %>

        </div>
    </body>
</html>
