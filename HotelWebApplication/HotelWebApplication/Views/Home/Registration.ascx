<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<HotelWebApplication.Models.Business_Logic.Client>" %>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.PersonalData) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.PersonalData) %>
                <%: Html.ValidationMessageFor(model => model.PersonalData) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BirthDate) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.BirthDate) %>
                <%: Html.ValidationMessageFor(model => model.BirthDate) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Phone) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Phone) %>
                <%: Html.ValidationMessageFor(model => model.Phone) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Login) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Login) %>
                <%: Html.ValidationMessageFor(model => model.Login) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Password) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Password) %>
                <%: Html.ValidationMessageFor(model => model.Password) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>


