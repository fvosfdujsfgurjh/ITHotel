<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<%@ Import Namespace="HotelWebApplication.Models.Entity_Model" %>


<link href="../../Content/Registration.css" rel="stylesheet" type="text/css" />
<script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
<script src="../../Scripts/jquery.cookies.js" type="text/javascript"></script>
<script src="../../Scripts/PageScripts/Registration.js" type="text/javascript"></script>


<div id="shade">
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
</div>
