<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<List<HotelWebApplication.Models.Entity_Model.Room>>" %>


<div id="roomsList">

    <%for(int i = 0; i < Model.Count; i++){ %>

        <div id="<%=Model[i].RoomID %>" class="room">
            <div id="photo"></div>
            <div id="room_info">
                <label id="romm_number">
                   Room Number: <%=Model[i].RoomNumber %>
                </label>
                <br />
                <label id="room_cost">
                   Room Cost: <%=Model[i].Cost %>
                </label>
            </div>
        </div>
    
    <%} %>

</div>