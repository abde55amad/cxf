<%@ page import="javax.servlet.http.HttpServletRequest, org.apache.cxf.rs.security.oidc.common.IdToken" %>

<%
    IdToken token = (IdToken) request.getAttribute("data");
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>IdToken</title>
    <STYLE TYPE="text/css">
	<!--
	  input {font-family:verdana, arial, helvetica, sans-serif;font-size:20px;line-height:40px;}
	  div.padded {  
         padding-left: 5em;  
      } 
	-->
</STYLE>
</head>
<body>
<div class="padded">
<h1>Id Token Details</h1>
<em></em>
<p>
<table border="1">
    <tr><th><big><big>Property</big></big></th><th><big><big>Value</big></big></th></tr> 
    <tr>
       <td><big>Email</big></big></td>
       <td><big><big><%= token.getClaim("email") %></big></big></td>
    </tr>
</table> 
</div> 
</body>
</html>
