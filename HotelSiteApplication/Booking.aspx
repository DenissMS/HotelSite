<%@ Page Inherits="HotelSiteApplication.Booking" Title="Title" Language="C#" MasterPageFile="~/Site.Master" Codebehind="Booking.aspx.cs" %>
<%@ Import Namespace="Resources" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <!DOCTYPE html>
    <div class="section page-full clearfix">
        <h2 class="page-title"><%=Booking.RoomBooking %></h2>
        <div class="page-content page-content-full">

            <div class="even-cols clearfix">
                <div class="one-half">
                    <div class="booknow-accompage full-booking-form">
                        <div class="booking-form booking-form-accompage">
                            <asp:TextBox ID="HotelRoom" Text="<%$Resources: Booking, ChooseRoom %>" CssClass="text-input" runat="server" Enabled="false"></asp:TextBox>
                            <asp:TextBox ID="DateFrom" CssClass="input-half datepicker" runat="server" Enabled="false" />
                            <asp:TextBox ID="DateTo" CssClass="input-half-last datepicker" runat="server" Enabled="false" />
                            <asp:TextBox ID="FullName" Text="<%$Resources: Booking, FullName %>" runat="server" CssClass="text-input"></asp:TextBox>
                            <asp:TextBox ID="Email" Text="<%$Resources: Booking, Email %>" runat="server" CssClass="text-input"></asp:TextBox>
                            <asp:TextBox ID="PhoneNumber" Text="<%$Resources: Booking, PhoneNumber %>" runat="server" CssClass="text-input"></asp:TextBox>
                            <asp:TextBox ID="Message" Text="<%$Resources: Booking, Message %>" runat="server" CssClass="text-input" TextMode="multiline" MaxLength="1000" Rows="6"></asp:TextBox>
                            <script type="text/javascript">

                                function Restore(tb, str) {
                                    if (tb.value == '') tb.value = str;
                                }

                                function Clear(tb, str) {
                                    if (tb.value == str) tb.value = '';
                                }

                            </script>
                            <asp:Button ID="btnConfirmBooking" Text="<%$Resources: Booking, ConfirmBooking %>" 
                                CssClass="bookbutton" runat="server" OnClientClick=" ConfirmBookingClick() " />
                        </div>
                    </div>
                    </div>
                <div id="booking-title"><h3>Пожалуйста, выберите номер</h3></div>
                <div id="hotel-map">
                    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
                    <asp:UpdatePanel ID="upHotelMap" runat="server">
                        <ContentTemplate>
                            <div id="svg">
                                <span id="Map" runat="server"></span>
                            </div>
                            <div id="labelCap">
                                <div id="room-title"><asp:Label ID="RoomTitle" runat="server"></asp:Label></div>
                                <asp:Label ID="RoomDescription" runat="server"></asp:Label>
                            </div>
                            <div class="room-attributes">
                                <span id="ServiceList" runat="server"></span>
                                <div id="room-price">
                                    <div id="labelprice">
                                        <asp:Label ID="Cost" runat="server" Font-Bold="False">0</asp:Label>
                                    </div>
                                    <asp:Label runat="server" ID="lblCurrency">грн.</asp:Label>
                                    <div class="price-detail">
                                        <asp:Label ID="Duration" runat="server" Visible="False"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <script type="text/javascript">
                                function ServiceClick(i) {
                                    var chb = document.getElementById('chb' + i);
                                    chb.checked = !chb.checked;
                                }

                                function ConfirmBookingClick() {
                                    var data = new Array();
                                    data[0] = document.getElementById('<%= FullName.ClientID %>').value;
                                    data[1] = document.getElementById('<%= Email.ClientID %>').value;
                                    data[3] = document.getElementById('<%= PhoneNumber.ClientID %>').value;
                                    data[4] = document.getElementById('<%= Message.ClientID %>').value;
                                    data[5] = document.getElementById('<%= HotelRoom.ClientID %>').value;
                                    data[6] = document.getElementById('<%= DateFrom.ClientID %>').value;
                                    data[7] = document.getElementById('<%= DateTo.ClientID %>').value;
                                    PageMethods.ConfirmBookingClick(data);
                                }

                                function ExtClick(n) {
                                    document.getElementById('<%= HotelRoom.ClientID %>').value = n;
                                    InitServiceList(n);
                                    PageMethods.GetRoomInfo(n, onSucess, onError);
                                    
                                    function onSucess(result) {
                                        document.getElementById('<%= RoomTitle.ClientID %>').innerHTML = result[5]; 
                                        document.getElementById('<%= RoomDescription.ClientID %>').innerHTML = result[1];
                                        document.getElementById('<%= Cost.ClientID %>').innerHTML = result[3];
                                    }
                                    function onError() { }
                                }
                                function InitServiceList(n) {
                                    PageMethods.GetServiceList(n, onSucess, onError);
                                    function onSucess(result) {
                                        document.getElementById('<%= ServiceList.ClientID %>').innerHTML = result;
                                    }
                                    function onError() { }
                                }
                            </script>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>