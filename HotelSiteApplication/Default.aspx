<%@ Page Inherits="HotelSiteApplication.Default" AutoEventWireup="true" Language="C#" MasterPageFile="~/Site.Master" Codebehind="Default.aspx.cs" %>
<%@ Import Namespace="Resources" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <!DOCTYPE html>
    <script type="text/javascript" src="js/jquery.ui.core.js"> </script>
    <script type="text/javascript" src="js/jquery.ui.widget.js"> </script>
    <script type="text/javascript" src="js/jquery.ui.datepicker.js"> </script>
    <script type='text/javascript' src='js/jquery.prettyPhoto.js'> </script>
    <script type="text/javascript" src="js/superfish.js"> </script>
    <script type="text/javascript" src="js/slides.min.jquery.js"> </script>
    <script type='text/javascript' src='js/jquery.easing.1.3.js'> </script>
    <script type='text/javascript' src='js/jquery.cookie.js'> </script>
    <script type="text/javascript" src="js/scripts.js"> </script>

    <!-- BEGIN #slides -->
    <div id="slides" class="slide-loader">
					
        <!-- BEGIN .slides_container -->
        <div class="slides_container">
						
            <div class="slide">
                <img src="images/slide1.jpg" alt="" />
                <div class="caption">Delux Double Ensuite Room</div>
            </div>
						
            <div class="slide">
                <a href="accommodation-single.html"><img src="images/slide2.jpg" alt="" /></a>
                <div class="caption">Delux Double King Room</div>
            </div>
						
            <div class="slide">
                <a href="accommodation-single.html"><img src="images/slide3.jpg" alt="" /></a>
                <div class="caption">Value Double Queen Room</div>
            </div>
				
            <!-- END .slides_container -->
        </div>

        <a href="#" class="prev">Previous</a>
        <a href="#" class="next">Next</a>

        <!-- BEGIN .booknow -->
        <div class="booknow">		
            <div class="clearfix">
                <asp:TextBox ID="tbDateFrom" CssClass="input-half datepicker" runat="server"></asp:TextBox>
                <asp:TextBox ID="tbDateTo" CssClass="input-half-last datepicker" runat="server" Width="100px"></asp:TextBox>
            </div>
            
            <asp:Button ID="btnBookNow" runat="server" class="bookbutton" OnClick="btnBookNow_Click" Text="<%$Resources: Resource,BookNow %>"/>					
            
            <asp:RequiredFieldValidator ID="rfvDateFrom" runat="server" ControlToValidate="tbDateFrom"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvDateTo" runat="server" ControlToValidate="tbDateTo"></asp:RequiredFieldValidator>
            
            <div class="corner-right"></div>
            <!-- END .booknow -->
        </div>
			
        <!-- END #slides -->
    </div>
			
    <h2 class="intro-msg">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc. Praesent et mauris nisl, quis imperdiet tellus.</h2>
    <hr>
    <!-- BEGIN .section -->
    <div class="section home-blocks clearfix">

        <div class="one-third-full">	
            <h3 class="title1"><%=Resource.Welcome %><span class="title-end"></span></h3>
            <p><div class="block-img1"><img src="images/home-block1.jpg" alt="" /></div></p>
            <p><%=Resource.WelcomeDesc %></p>
            <p><a href="#" class="button2"><%=Resource.Details %></a></p>			
        </div>

        <div class="one-third-full featured-wrapper">
            <h3 class="title1"><%=Resource.WhatWeHave %><span class="title-end"></span></h3>
            <ul class="list3">
                <%=Resource.WhatWeHaveDesc %>
            </ul>
            <p><a href="#" class="button2"><%=Resource.Details %></a></p>
            <div class="featured-bottom"></div>	
        </div>
					
        <div class="one-third-full">	
            <h3 class="title1">Luxury Spa<span class="title-end"></span></h3>
            <p><div class="block-img1"><img src="images/home-block2.jpg" alt="" /></div></p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc. </p>
            <p><a href="#" class="button2"><%=Resource.Details %></a></p>			
        </div>

        <!-- END .section -->
    </div>
				
    <hr>		
    <!-- BEGIN .section -->
    <div class="section clearfix">				
        <!-- BEGIN .one-half-full -->
        <div class="one-half-full">	
            <!-- END .one-half-full -->			
        </div>
					
        <!-- BEGIN .one-half-full .last-col-full -->
        <div class="one-half-full last-col-full">		
        </div>
				
        <!-- END .section -->
    </div>		
</asp:Content>