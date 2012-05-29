<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<%@ Import Namespace="HotelWebApplication.Models.Entity_Model" %>



<link href="../../Content/SignIn.css" rel="stylesheet" type="text/css" />

<div id="mainData">

    <div id="signInDiv">

        <input type="text" id="loginSignIn" />
        <input type="password" id="passwordSignIn" />

        <div id="signInButtonDiv">
            <button id="signInButton">Sign In</button>
        </div>
        
    </div>
    
    <!--<div id="signOutDiv">
        <label id="welcomeLabel">
        </label>
        <button id="signOutButton">Sign Out</button>
    </div>
    -->

</div>