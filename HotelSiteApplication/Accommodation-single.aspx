﻿<%@ Page Inherits="AccommodationSingle" Language="C#" MasterPageFile="~/Site.Master" Title="Title" Codebehind="Accommodation-single.aspx.cs" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <!DOCTYPE html>
    <!-- BEGIN .section -->
    <div class="section page-full clearfix">

        <h2 class="page-title">Hotel Room #1</h2>
					
        <!-- BEGIN .page-content -->
        <div class="page-content page-content-full">
					
            <div class="even-cols clearfix">
                <div class="one-half">
								
                    <!-- BEGIN #slides -->
                    <div id="slides1" class="slide-loader">

                        <!-- BEGIN .slides_container -->
                        <div class="slides_container">

                            <div class="slide">
                                <a href="#"><img src="images/accom-slide1.jpg" alt="" /></a>
                                <div class="caption">Delux Double Ensuite Room</div>
                            </div>

                            <div class="slide">
                                <a href="#"><img src="images/accom-slide2.jpg" alt="" /></a>
                                <div class="caption">Delux Double Ensuite Room</div>
                            </div>

                            <!-- END .slides_container -->
                        </div>

                        <a href="#" class="prev">Previous</a>
                        <a href="#" class="next">Next</a>

                        <!-- END #slides -->
                    </div>
								
                </div>
						
                <div class="one-half last-col">
                    <h3 class="title1">Room Description<span class="title-end"></span></h3>
                    <p>Etiam eget urna augue. Aenean posuere pharetra tortor eu sodales. Aenean vitae facilisis ligula. Nulla facilisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque dictum neque in lectus cursus congue. Phasellus sodales condimentum rutrum.</p>
								
                    <div class="booknow-accompage">
									
                        <div class="book-price">
                            <h2 class="price">$100<span class="price-detail">per night</span></h2>
                        </div>
									
                        <form class="booking-form booking-form-accompage" name="bookroom" action="http://themes.quitenicestuff.com/nicehotel/booking.html" method="post">

                            <input type="text" value="Hotel Room #1" class="text-input" disabled="disabled">

                            <div class="clearfix">
                                <input type="text" id="datefrom" value="From" class="input-half datepicker">
                                <input type="text" id="dateto" value="To" class="input-half input-half-last datepicker">
                            </div>
                            <asp:Button ID="btnBookNow" CssClass="bookbutton" runat="server" Text="<%$Resources: Booking,RoomBooking %>" />

                        </form>
									
                    </div>
								
                </div>
            </div>
						
            <h3 class="title1">Room Facilities<span class="title-end"></span></h3>
						
            <div class="clearfix">
                <div class="one-third">
                    <ul class="list3">
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                    </ul>
                </div>
						
                <div class="one-third">
                    <ul class="list3">
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                    </ul>
                </div>
						
                <div class="one-third last-col">
                    <ul class="list3">
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                        <li>List Item #1</li>
                    </ul>
                </div>
            </div>
						
            <!-- END .page-content -->
        </div>
					
        <!-- END .section -->
    </div>
</asp:Content>