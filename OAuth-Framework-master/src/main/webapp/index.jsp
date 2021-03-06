<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        .button {
            background-color: #4286f4;
            border: none;
            
            margin: 4px 2px;
            cursor: pointer;
			color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
    </style>
    <title>User Feed Viewer Application</title>
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#goButton").click(makeRequest);
        });
        function makeRequest() {
// Define properties fot the resources
            var AUTH_ENDPOINT = "https://www.facebook.com/dialog/oauth";
            var RESPONSE_TYPE = "code";
            var CLIENT_ID = "337853376774299";
            var REDIRECT_URI = "http://localhost:8080/facebookapp/callbackURL";
            var SCOPE = "public_profile user_posts user_photos";
// Build authorization request endpoint************
            var requestEndpoint = AUTH_ENDPOINT + "?" +
                    "response_type=" + encodeURIComponent(RESPONSE_TYPE) + "&" +
                    "client_id=" + encodeURIComponent(CLIENT_ID) + "&" +
                    "redirect_uri=" + encodeURIComponent(REDIRECT_URI) + "&" +
                    "scope=" + encodeURIComponent(SCOPE);
// Send to authorization request ***********************************
            window.location.href = requestEndpoint;
        }
    </script>
</head>
<body>
<h1>Hey, Know Your Status Updates !!!</h1>

<img src="images/status.jpg"/>
<br/>
<br/>

<button id="goButton" type="button" class="button">Proceed With Facebook !!!</button>
<div id="results"></div>
</body>
</html>
