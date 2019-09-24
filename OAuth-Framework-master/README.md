# OAuth 2.0 Framework
First of all read my blog post to understand the OAuth framework.(https://ichibablog.blogspot.com/2018/10/oauth-2.html)
It describes how to get your OAuth application registered in Facebook Developer account to get a App ID and App Secret.
I have clearly mentioned each step in my blog.
As it says the OAuth redirection endpoint of the client application is http://localhost:8080/facebookapp/callbackURL .If you are trying this project you need to change the those two files .

1) /src/main/java/com/udani/oauth/facebookapp/servlet/OAuthCallbackListener.java
   final String REDIRECT_URI = "http://localhost:8080/facebookapp/callbackURL"; //your own redirect url
   final String CLIENT_ID = "337853376774299"; // your app id
   final String CLIENT_SECRET = "8b66869ff84214025ae3eecc914a290e"; // your app secret

2) /src/main/webapp/index.jsp
   var CLIENT_ID = "337853376774299"; your app id
   var REDIRECT_URI = "http://localhost:8080/facebookapp/callbackURL"; //your own redirect url

Afte all these changes, build your project with Maven
Then you can have the facebookapp.war file in the target directory. There you can deploy it in tomcat web server 
