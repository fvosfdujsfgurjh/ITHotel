<%@ Page Title="rooms" Language="C#" MasterPageFile="~/Views/MasterPage.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

        <link href="../../Content/RoomsCSS.css" rel="stylesheet" type="text/css" />

        <div id="content"> 
        </div>

            <div id="rooms_container">     
                <div id="rooms_list">
    	            <ul id="list">
                        <li> <a href="#"> guy && guy hotel  </a> </li>
        	            <li> <a href="#"> Обычная комната </a> </li>
        	            <li> <a href="#"> Хорошая комната </a> </li>
                	    <li> <a href="#"> Отличная комната </a> </li>
  	    	        </ul>
               </div>        
            <div id="rooms_view"> </div>  
        </div>  
  
</asp:Content>

