<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<%@ Import Namespace="HotelWebApplication.Models.Entity_Model" %>


<<<<<<< HEAD
 <link href="../../Content/Registration.css" rel="stylesheet" type="text/css" />
=======
<link href="../../Content/Registration.css" rel="stylesheet" type="text/css" />
<script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
<script src="../../Scripts/jquery.cookies.js" type="text/javascript"></script>
<script src="../../Scripts/PageScripts/Registration.js" type="text/javascript"></script>
>>>>>>> ba3ec8352b592ccde5c5fd1d9eca98420a672afd

<div id="RegMainData">
     <div id="InputsDiv">
         <input type="text" id="RegUsername" />
         <input type="password" id="RegPassword" />
         <input type="text" id="RegPersonalData" />
         <input type="text" id="RegTelephone" />
         <input type="text" id="RegDateBirth" />
    </div>
    <div>
        <div id="RegOkButton">
            <button id="OkButton"> Ok </button>
        </div>
        <div id="RegCancelButton">
            <button id="CancelButton"> Cancel </button>
        </div>
    </div>
</div>