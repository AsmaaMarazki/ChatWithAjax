<%-- 
    Document   : signUp
    Created on : Feb 23, 2018, 2:23:01 PM
    Author     : Asmaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <script src=http://code.jquery.com/jquery-latest.min.js></script>
                <style type="text/css">
            body{
                color: antiquewhite;
                background-image: url(7.jpg);
                background-repeat: no-repeat;
                background-size: cover;
                
            }
            #loginPage{
                background-color: rgba(150, 0, 66,0.5);
                width: 30%;
                margin: 20px;
                padding: 10px;
                border-radius: 10px;
                margin-top: 20%;
                margin-left: 20%;
            }
            .myButton {
                margin: 5px;
                -moz-box-shadow:inset 0px 1px 0px 0px #dcecfb;
                -webkit-box-shadow:inset 0px 1px 0px 0px #dcecfb;
                box-shadow:inset 0px 1px 0px 0px #dcecfb;
                background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #bddbfa), color-stop(1, #80b5ea));
                background:-moz-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
                background:-webkit-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
                background:-o-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
                background:-ms-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
                background:linear-gradient(to bottom, #bddbfa 5%, #80b5ea 100%);
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#bddbfa', endColorstr='#80b5ea',GradientType=0);
                background-color:#bddbfa;
                -moz-border-radius:6px;
                -webkit-border-radius:6px;
                border-radius:6px;
                border:1px solid #84bbf3;
                display:inline-block;
                cursor:pointer;
                color:#ffffff;
                font-family:Arial;
                font-size:15px;
                font-weight:bold;
                padding:6px 24px;
                text-decoration:none;
                text-shadow:0px 1px 0px #528ecc;
                }
                .myButton:hover {
                        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #80b5ea), color-stop(1, #bddbfa));
                        background:-moz-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
                        background:-webkit-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
                        background:-o-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
                        background:-ms-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
                        background:linear-gradient(to bottom, #80b5ea 5%, #bddbfa 100%);
                        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#80b5ea', endColorstr='#bddbfa',GradientType=0);
                        background-color:#80b5ea;
                }
                .myButton:active {
                        position:relative;
                        top:1px;
                }
                a{
                    color: #80b5ea;
                }
                input[type=text] {
                    border: 3px solid #80b5ea;
                    margin: 5px;
                }
               input[type=password] {
                    border: 3px solid #80b5ea;
                } 
            
        </style>
    </head>
    <body>
        
        <div id="loginPage">
            <center>
                <input placeholder="Username" type="text" name="username" id="username"/><br/>
                <input placeholder="Password" type="password" name="password" id="password"/><br/>
                <input class="myButton" type="button" value="Login" id="loginBtn" onclick="login();"/><br/>
            </center>
        </div>

        <script>
            function login() {
                var name = $("#username").val();
                var password = $("#password").val();
                $.post('RegisterServlet',{"username": name, "password": password}, function(response, status, xhr){
                    if(status==="success"){
                        if(response.result==="true"){
                            window.location.href = "Home.jsp";
                        }
                    }
                    else{
                       alert("Wrong username or password"); 
                    }
                });
                 
            }
        </script>
    </body>
</html>
