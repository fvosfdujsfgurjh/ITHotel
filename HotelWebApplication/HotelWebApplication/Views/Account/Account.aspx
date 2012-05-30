<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage.Master" Inherits="System.Web.Mvc.ViewPage<HotelWebApplication.Models.Entity_Model.Client>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <link href="../../Content/Account.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script src="../../Scripts/PageScripts/Account.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id = "accountMainData">

        <% using (Html.BeginForm()) {%>
            <%: Html.ValidationSummary(true) %>
        
            <div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.PersonalData) %>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(model=>model.PersonalData, new { ID = "nameField" })%>
                    <%: Html.ValidationMessageFor(model => model.PersonalData) %>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.BirthDate) %>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(model => model.BirthDate, new { ID = "birthdateField"})%>
                    <%: Html.ValidationMessageFor(model => model.BirthDate) %>
                </div>
            
                <div class="editor-label">
                    <%: Html.LabelFor(model => model.Phone) %>
                </div>
                <div class="editor-field">
                    <%: Html.TextBoxFor(model => model.Phone, new { ID = "phoneField" }) %>
                    <%: Html.ValidationMessageFor(model => model.Phone)%>
                </div>
            
                <p>
                    <input type="button" id="saveButton" value="Save" />
                </p>
            </div>

        <% } %>

    </div>

</asp:Content>


