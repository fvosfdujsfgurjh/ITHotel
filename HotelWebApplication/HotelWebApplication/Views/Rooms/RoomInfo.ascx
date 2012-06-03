<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<HotelWebApplication.Models.Entity_Model.Room>" %>
<link href="../../Content/RoomInfo.css" rel="stylesheet" type="text/css" />


<div id="InfoPage">
    <div id="SomeInfo">
        <div id="Info">
            This is <%=Model.RoomNumber %> number <br /> <br />
            Any information about Rooms. Any information about Rooms. Any information about Rooms. Any information about Rooms. Any information about Rooms.
            Any information about Rooms. Any information about Rooms. Any information about Rooms. Any information about Rooms. Any information about Rooms.
            Any information about Rooms. Any information about Rooms. Any information about Rooms. Any information about Rooms. Any information about Rooms.
            Any information about Rooms. Any information about Rooms. Any information about Rooms. Any information about Rooms. Any information about Rooms.
        </div>
        <div id="InfoButtonsDiv">
            <button id="ReserveButton"> Reserve </button>
            <button id="ReserveCanselButton"> Cancel </button>
        </div>
    </div>

    <div id="RoomInfoPicture">
        <div id="DivPicture1">
        </div>
        <div id="DivPicture2">
        </div>
    </div>

    <div id="ConfirmDialog">
        <div id="DateDiv">
            1
        </div>
        <div id="CashCardDiv">
            <div id="CashDiv">
                <input type="radio" name="Cash" /> Cash
            </div>
            <div id="CreditCardDiv">
                <input type="radio" name="CreditCard" /> CreditCard 
            </div>
        </div>
        <div id="ConfirmButtonsDiv">
            <button id="ConfirmButton"> Confirm </button>
            <button id="ConfirmCancelButton"> Cancel </button> 
        </div>   
    </div>

</div>