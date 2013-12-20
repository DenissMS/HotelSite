<%@ Page Inherits="Accommodation" Title="Title" Language="C#" MasterPageFile="~/Site.Master" Codebehind="Accommodation.aspx.cs" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <!DOCTYPE html>
    <!-- BEGIN .section -->
    <div class="section accommodation-page page-full clearfix">

        <h2 class="page-title page-title-full">Accommodation</h2>

        <!-- BEGIN .section -->
        <div class="section clearfix">

            <div class="one-third-full">	
                <p><div class="block-img1"><a href="accommodation-single.aspx"><img src="images/room1.jpg" alt="" /></a></div></p>
                <h3 class="title1"><a href="accommodation-single.aspx">Hotel Room #1</a><span class="title-end"></span></h3>		
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc.</p>
                <p><a href="accommodation-single.aspx" class="button2">Details &raquo;</a></p>			
            </div>

            <div class="one-third-full featured-wrapper">
                <p><div class="block-img1"><a href="accommodation-single.aspx"><img src="images/room2.jpg" alt="" /></a></div></p>
                <h3 class="title1"><a href="accommodation-single.aspx">Hotel Room #2 (Featured)</a><span class="title-end"></span></h3>		
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc.</p>
                <p><a href="accommodation-single.aspx" class="button2">Details &raquo;</a></p>
                <div class="featured-bottom"></div>	
            </div>

            <div class="one-third-full">	
                <p><div class="block-img1"><a href="accommodation-single.aspx"><img src="images/room3.jpg" alt="" /></a></div></p>
                <h3 class="title1"><a href="#">Hotel Room #3</a><span class="title-end"></span></h3>		
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc.</p>
                <p><a href="#" class="button2">Details &raquo;</a></p>
            </div>

            <!-- END .section -->
        </div>
					
        <hr>
					
        <!-- BEGIN .section -->
        <div class="section clearfix">

            <div class="one-third-full">	
                <p><div class="block-img1"><a href="accommodation-single.aspx"><img src="images/room2.jpg" alt="" /></a></div></p>
                <h3 class="title1"><a href="accommodation-single.aspx">Hotel Room #4</a><span class="title-end"></span></h3>		
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc.</p>
                <p><a href="accommodation-single.aspx" class="button2">Details &raquo;</a></p>			
            </div>

            <div class="one-third-full">
                <p><div class="block-img1"><a href="accommodation-single.aspx"><img src="images/room3.jpg" alt="" /></a></div></p>
                <h3 class="title1"><a href="accommodation-single.aspx">Hotel Room #5</a><span class="title-end"></span></h3>		
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc.</p>
                <p><a href="accommodation-single.aspx" class="button2">Details &raquo;</a></p>
            </div>

            <div class="one-third-full">	
                <p><div class="block-img1"><a href="accommodation-single.aspx"><img src="images/room1.jpg" alt="" /></a></div></p>
                <h3 class="title1"><a href="accommodation-single.aspx">Hotel Room #6</a><span class="title-end"></span></h3>		
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc.</p>
                <p><a href="accommodation-single.aspx" class="button2">Details &raquo;</a></p>
            </div>

            <!-- END .section -->
        </div>
					
        <div class="page-pagination page-pagination-full">
            <p class="clearfix">
                <span class="fl"><a href="#">&larr; Previous</a></span>
                <span class="fr"><a href="#">Next &rarr;</a></span>
            </p>
        </div>

        <!-- END .section -->
    </div>
</asp:Content>