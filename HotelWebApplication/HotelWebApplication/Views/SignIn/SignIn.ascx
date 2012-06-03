<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<%@ Import Namespace="HotelWebApplication.Models.Entity_Model" %>



<link href="../../Content/SignIn.css" rel="stylesheet" type="text/css" />
<script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
<script src="../../Scripts/jquery.cookies.js" type="text/javascript"></script>
<script src="../../Scripts/PageScripts/SignIn.js" type="text/javascript"></script>

<div id="mainData">

    <div id="signInDiv">

        <input type="text" id="loginSignIn" />
        <input type="password" id="passwordSignIn" />

        <div id="signInButtonDiv">
            <button id="signInButton">Sign In</button>
        </div>
        <div id="SignInCancelDiv">
            <button id="SignCancelButton"> Cancel </button>
        </div>
        
    </div>

</div>