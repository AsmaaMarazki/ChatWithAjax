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
        <title>Home Page</title>
        <script src=http://code.jquery.com/jquery-latest.min.js></script>
                <style type="text/css">
            body{
                color: antiquewhite;
                background-image: url(7.jpg);
                background-repeat: no-repeat;
                background-size: cover;
                
            }
            #messagePage{
                background-color: rgba(150, 0, 66,0.5);
                width: 30%;
                text-align: center;
                padding: 10px;
                border-radius: 10px;
                margin-bottom: 5px;
                margin-left: 5px;
                
            }
            #messagesPage{
                background-color: rgba(127,214,221,0.5);
                width: 30%;
                text-align: center;
                padding: 10px;
                border-radius: 10px;
                margin-top: 5px;
                
            }
            #friendsPage{
                background-color: rgba(106, 193, 105,0.5);
                width: 30%;
                text-align: center;
                padding: 10px;
                border-radius: 10px;
                 margin-left: 5px;
                
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
                    width: 80%;
                }
              .outBtn {
            -moz-box-shadow:inset 0px 1px 0px 0px #f5978e;
            -webkit-box-shadow:inset 0px 1px 0px 0px #f5978e;
            box-shadow:inset 0px 1px 0px 0px #f5978e;
            background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f0386c), color-stop(1, #c4205c));
            background:-moz-linear-gradient(top, #f0386c 5%, #c4205c 100%);
            background:-webkit-linear-gradient(top, #f0386c 5%, #c4205c 100%);
            background:-o-linear-gradient(top, #f0386c 5%, #c4205c 100%);
            background:-ms-linear-gradient(top, #f0386c 5%, #c4205c 100%);
            background:linear-gradient(to bottom, #f0386c 5%, #c4205c 100%);
            filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f0386c', endColorstr='#c4205c',GradientType=0);
            background-color:#f0386c;
            -moz-border-radius:6px;
            -webkit-border-radius:6px;
            border-radius:6px;
            border:1px solid #cf1995;
            display:inline-block;
            cursor:pointer;
            color:#ffffff;
            font-family:Arial;
            font-size:15px;
            font-weight:bold;
            padding:6px 24px;
            text-decoration:none;
            text-shadow:0px 1px 0px #810e05;
    }
    .outBtn:hover {
            background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c4205c), color-stop(1, #f0386c));
            background:-moz-linear-gradient(top, #c4205c 5%, #f0386c 100%);
            background:-webkit-linear-gradient(top, #c4205c 5%, #f0386c 100%);
            background:-o-linear-gradient(top, #c4205c 5%, #f0386c 100%);
            background:-ms-linear-gradient(top, #c4205c 5%, #f0386c 100%);
            background:linear-gradient(to bottom, #c4205c 5%, #f0386c 100%);
            filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c4205c', endColorstr='#f0386c',GradientType=0);
            background-color:#c4205c;
    }
    .outBtn:active {
            position:relative;
            top:1px;
    }

            
        </style>
    </head>

    <body onload="setInterval('render()', 1000)">
        <button class="outBtn" style="float:right;" id="exit" onclick="logout();">Logout</button>

        <div id="messagePage">
            <input type="text" placeholder="Message" name="message" id="message"/><br/>
             <input class="myButton" type="button" value="Send" id="sendMessageBtn" onclick="sendMessage()"/>
        </div>

        <div id="friendsPage">
            <center>
                <table>
                    <tr><td>Online Friends</td></tr>
                </table>
                <table id="friendsTable" style="word-wrap:break-word; padding: 10px;">

                </table>
            </center>
        </div>

        <center>
        <div id="messagesPage">
            <center>
                <table>
                    <tr><td>Messages</td></tr>
                </table>
                <table border="1" id="messagesTable" style="word-wrap:break-word; padding: 10px; width: 90%">

                </table>
            </center>
        </div>
            <center>
        <script>
            function sendMessage() {
                var message = $("#message").val();
                document.getElementById("message").value = "";
                var jsonData = {"message": message};
                $.ajax({
                    url: 'HomeServlet',
                    type: 'GET',
                    contentType: 'application/json',
                    data: jsonData,
                    dataType: 'json'
                });
            }

            function render() {
                getMessages();
                getUsers();
            }

            function getMessages() {
                $.ajax({
                    url: 'HomeServlet',
                    type: 'POST',
                    contentType: 'application/json',
                    dataType: 'json',
                    success: function (data) {
                        messages = data;
                        $("#messagesTable tr").remove();
                        for (counter = 0; counter < messages.length; counter++) {
                            $("#messagesTable").append('<tr><td>' + messages[counter].username + '</td><td>' + messages[counter].message + '</td></tr>');
                        }
                    }

                });
            }

            function getUsers() {
                $.ajax({
                    url: 'UserServlet',
                    type: 'POST',
                    contentType: 'application/json',
                    dataType: 'json',
                    success: function (data) {
                        users = data;
                        $("#friendsTable tr").remove();
                        for (counter = 0; counter < users.length; counter++) {
                            $("#friendsTable").append('<tr><td>' + users[counter].username + '</td></tr>');
                        }
                    }

                });
            }

            function logout() {
                $.ajax({
                    url: 'UserServlet',
                    type: 'GET',
                    success: function (data, status, jqXHR) {
                        window.location.href = "login.jsp";
                    }
                });

            }

        </script>
    </body>
</html>
