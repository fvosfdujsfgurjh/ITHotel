<%@ Page Title="rooms" Language="C#" MasterPageFile="~/Views/MasterPage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <link href="../../Content/RoomsCSS.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/RoomsList.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script src="../../Scripts/jquery.cookies.js" type="text/javascript"></script>
    <script src="../../Scripts/PageScripts/RoomsList.js" type="text/javascript"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    


    <div id="content"> 
    </div>

        <div id="rooms_container">     
            <div id="rooms_list">
    	        <ul id="list">
                    <li id="all_room" class="listItem">guy && guy hotel</li>
        	        <li id="norm_room" class="listItem">Обычная комната</li>
        	        <li id="good_room" class="listItem">Хорошая комната</li>
                	<li id="perfect_room" class="listItem">Отличная комната</li>
  	    	    </ul>
            </div>      
              
            <div id="rooms_view">
            </div>  
        </div>  

  
</asp:Content>

