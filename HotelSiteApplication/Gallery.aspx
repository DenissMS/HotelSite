<%@ Page Inherits="Gallery" Title="Title" Language="C#" MasterPageFile="~/Site.Master" Codebehind="Gallery.aspx.cs" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <!DOCTYPE html>
    <div class="page-header">
        <img src="images/pagehead1.jpg" alt="" />
    </div>
    <div class="section gallery-page page-full clearfix">
        <h2 class="page-title page-title-full">Photo Gallery</h2>
        <div class="section even-cols section-bm clearfix">
            <div class="one-third-full">
                <div class="gallery-item">
                    <div class="gallery-thumbnail">		
                        <a href="images/gallery1.jpg" rel="prettyPhoto">
                            <span class="zoom-wrapper">
                                <span class="zoom"></span>
                            </span>
                            <img src="images/gallery1.jpg" alt="" />
                        </a>
                    </div>
                    <h3 class="title1"><a href="images/gallery1.jpg" rel="prettyPhoto">Gallery Caption #1</a><span class="title-end"></span></h3>
                </div>
            </div>
            <div class="one-third-full">
                <div class="gallery-item">
                    <div class="gallery-thumbnail">		
                        <a href="images/gallery2.jpg" rel="prettyPhoto">
                            <span class="zoom-wrapper">
                                <span class="zoom"></span>
                            </span>
                            <img src="images/gallery2.jpg" alt="" />
                        </a>
                    </div>		
                    <h3 class="title1"><a href="images/gallery2.jpg" rel="prettyPhoto">Gallery Caption #2</a><span class="title-end"></span></h3>
                </div>
            </div>
            <div class="one-third-full last-col-full">
                <div class="gallery-item">
                    <div class="gallery-thumbnail">		
                        <a href="images/gallery5.jpg" rel="prettyPhoto">
                            <span class="zoom-wrapper">
                                <span class="zoom"></span>
                            </span>
                            <img src="images/gallery5.jpg" alt="" />
                        </a>
                    </div>
                    <h3 class="title1"><a href="images/gallery5.jpg" rel="prettyPhoto">Gallery Caption #3</a><span class="title-end"></span></h3>
                </div>
            </div>
            <div class="one-third-full">
                <div class="gallery-item">
                    <div class="gallery-thumbnail">		
                        <a href="images/gallery3.jpg" rel="prettyPhoto">
                            <span class="zoom-wrapper">
                                <span class="zoom"></span>
                            </span>
                            <img src="images/gallery3.jpg" alt="" />
                        </a>
                    </div>
                    <h3 class="title1"><a href="images/gallery3.jpg" rel="prettyPhoto">Gallery Caption #4</a><span class="title-end"></span></h3>
                </div>
            </div>
            <div class="one-third-full">
                <div class="gallery-item">
                    <div class="gallery-thumbnail">
									
                        <a href="images/gallery4.jpg" rel="prettyPhoto">
                            <span class="zoom-wrapper">
                                <span class="zoom"></span>
                            </span>
                            <img src="images/gallery4.jpg" alt="" />
                        </a>
                    </div>		
                    <h3 class="title1"><a href="images/gallery4.jpg" rel="prettyPhoto">Gallery Caption #5</a><span class="title-end"></span></h3>
                </div>
            </div>
            <div class="one-third-full last-col-full">
                <div class="gallery-item">
                    <div class="gallery-thumbnail">						
                        <a href="images/images/gallery1.html" rel="prettyPhoto">
                            <span class="zoom-wrapper">
                                <span class="zoom"></span>
                            </span>
                            <img src="images/gallery1.jpg" alt="" />
                        </a>
                    </div>
                    <h3 class="title1"><a href="images/gallery1.jpg" rel="prettyPhoto">Gallery Caption #6</a><span class="title-end"></span></h3>
                </div>
            </div>
            <div class="one-third-full">
                <div class="gallery-item">
                    <div class="gallery-thumbnail">
									
                        <a href="images/gallery4.jpg" rel="prettyPhoto">
                            <span class="zoom-wrapper">
                                <span class="zoom"></span>
                            </span>
                            <img src="images/gallery4.jpg" alt="" />
                        </a>
                    </div>
                    <h3 class="title1"><a href="images/gallery4.jpg" rel="prettyPhoto">Gallery Caption #7</a><span class="title-end"></span></h3>
                </div>
            </div>
            <div class="one-third-full">
                <div class="gallery-item">
                    <div class="gallery-thumbnail">
									
                        <a href="images/gallery3.jpg" rel="prettyPhoto">
                            <span class="zoom-wrapper">
                                <span class="zoom"></span>
                            </span>
                            <img src="images/gallery3.jpg" alt="" />
                        </a>
                    </div>
                    <h3 class="title1"><a href="images/gallery3.jpg" rel="prettyPhoto">Gallery Caption #8</a><span class="title-end"></span></h3>
                </div>
            </div>
            <div class="one-third-full last-col-full">
                <div class="gallery-item">
                    <div class="gallery-thumbnail">
									
                        <a href="images/gallery5.jpg" rel="prettyPhoto">
                            <span class="zoom-wrapper">
                                <span class="zoom"></span>
                            </span>
                            <img src="images/gallery5.jpg" alt="" />
                        </a>
                    </div>	
                    <h3 class="title1"><a href="images/gallery5.jpg" rel="prettyPhoto">Gallery Caption #9</a><span class="title-end"></span></h3>
                </div>
            </div>
        </div>
    </div>
</asp:Content>