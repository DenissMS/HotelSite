<%@ Page Title="Контакт" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="Contact" Codebehind="Contact.aspx.cs" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <!DOCTYPE html>	
    <!-- BEGIN .section -->
    <div class="section clearfix">
					
        <!-- BEGIN .main-content -->
        <div class="main-content">
						
            <h2 class="page-title">Contact</h2>
						
            <!-- BEGIN .page-content -->
            <div class="page-content">
						
                <div class="clearfix">
                    <div class="one-half">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fringilla quam quis neque blandit nec adipiscing lectus vehicula. Ut sit amet elit ac massa hendrerit euismod id eget sem. Aenean lobortis lacus quis ipsum lobortis sagittis.</p>
                    </div>

                    <div class="one-half last-col">
                        <h4>Details</h4>
                        <ul>
                            <li>1 London Road, SE1</li>
                            <li>+44 01235 934698</li>
                            <li>mail[at]web.com</li>
                        </ul>
                    </div>
                </div>

                <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"> </script>
                <script type="text/javascript" src="../../raw.github.com/marioestrada/jQuery-gMap/master/jquery.gmap.min.js"> </script>

                <div id="google-map" style="height: 250px; width: 100%;"></div>

                <script type="text/javascript">
                    $(document).ready(function($) {
                        $("#google-map").gMap({
                            latitude: 0,
                            longitude: 0,
                            maptype: "ROADMAP",
                            zoom: 13,
                            markers: [
                                { latitude: 0, longitude: 0, address: "London, UK", popup: true, html: "" }
                            ],
                            controls: { panControl: true, zoomControl: true, mapTypeControl: true, scaleControl: true, streetViewControl: false, overviewMapControl: false }
                        });
                    });
                </script>

                <h4>Send Us An Email</h4>

                <form action="#" id="commentform" class="clearfix" method="post">

                    <div class="field-row">
                        <label for="contact_name">Name <span>(required)</span></label>
                        <input type="text" name="contact_name" id="contact_name" class="text_input" value="" />
                    </div>

                    <div class="field-row">
                        <label for="email">Email <span>(required)</span></label>
                        <input type="text" name="email" id="email" class="text_input" value="" />		
                    </div>

                    <div class="field-row">
                        <label for="message_text">Message</label>
                        <textarea name="message" id="message_text" class="text_input" cols="60" rows="9"></textarea>
                    </div>

                    <input class="button2" type="submit" value="Send Email" id="submit" name="submit">

                </form>
							
                <!-- END .page-content -->
            </div>
					
            <!-- END .main-content -->
        </div>
					
        <!-- BEGIN .sidebar -->
        <div class="sidebar last-col">
						
            <div class="widget">
                <form method="get" action="#" class="search">
                    <input type="text" onblur=" if (this.value == '') this.value = 'Search...'; " onfocus=" if (this.value == 'Search...') this.value = ''; " value="Search..." name="s" />
                </form>
            </div>
						
            <div class="widget">
                <div class="widget-title clearfix"><h5>Categories</h5></div>
                <ul>
                    <li><a href="#">List Item #1</a></li>
                    <li><a href="#">List Item #2</a></li>
                    <li><a href="#">List Item #3</a></li>
                    <li><a href="#">List Item #4</a></li>
                    <li><a href="#">List Item #5</a></li>
                    <li><a href="#">List Item #6</a></li>
                </ul>
            </div>
						
            <div class="widget">
                <div class="widget-title clearfix"><h5>Tags</h5></div>
                <ul class="wp-tag-cloud clearfix">
                    <li><a href="#">Tag #1</a></li>
                    <li><a href="#">Tag #2</a></li>
                    <li><a href="#">Tag #3</a></li>
                    <li><a href="#">Tag #4</a></li>
                    <li><a href="#">Tag #5</a></li>
                    <li><a href="#">Tag #6</a></li>
                </ul>
            </div>
						
            <div class="widget">
                <div class="widget-title clearfix"><h5>Recent Posts</h5></div>
							
                <ul class="latest-posts-list clearfix">
								
                    <li class="clearfix">
                        <div class="lpl-img">
                            <a href="#" rel="bookmark">
                                <img width="66" height="66" src="images/news-prev1.jpg" alt="" />
                            </a>
                        </div>
                        <div class="lpl-content">
                            <h6><a href="#" rel="bookmark">Dasellus ac nibh urna donec 
                                    ac urna</a> <span> Posted Jun 13, 2012 By admin</span></h6>
                        </div>
                    </li>
								
                    <li class="clearfix">
                        <div class="lpl-img">
                            <a href="#" rel="bookmark">
                                <img width="66" height="66" src="images/news-prev2.jpg" alt="" />
                            </a>
                        </div>
                        <div class="lpl-content">
                            <h6><a href="#" rel="bookmark">Dasellus ac nibh urna donec 
                                    ac urna</a> <span> Posted Jun 13, 2012 By admin</span></h6>
                        </div>
                    </li>
								
                    <li class="clearfix">
                        <div class="lpl-img">
                            <a href="#" rel="bookmark">
                                <img width="66" height="66" src="images/news-prev3.jpg" alt="" />
                            </a>
                        </div>
                        <div class="lpl-content">
                            <h6><a href="#" rel="bookmark">Dasellus ac nibh urna donec 
                                    ac urna</a> <span> Posted Jun 13, 2012 By admin</span></h6>
                        </div>
                    </li>
								
                </ul>
						
            </div>
						
            <div class="widget">
                <div class="widget-title clearfix"><h5>Reservations</h5></div>
							
                <!-- BEGIN .booknow-sidebar -->
                <div class="booknow-sidebar">
							
                    <!-- BEGIN .booknow -->
                    <div class="booknow">

                        <form class="booking-form" name="bookroom" action="#" method="post">

                            <div class="select-wrapper">
                                <select id="room" name="room">
                                    <option>Select a Room...</option>
                                    <option>Single Standard Room</option>
                                    <option>Double Standard Room</option>
                                    <option>Single Ensuite Room</option>
                                    <option>Double Ensuite Room</option>
                                </select>
                            </div>

                            <div class="clearfix">
                                <input type="text" id="datefrom" value="From" class="input-half datepicker">
                                <input type="text" id="dateto" value="To" class="input-half input-half-last datepicker">
                            </div>

                            <input class="bookbutton" type="submit" value="Book Now" />

                        </form>

                        <div class="corner-left"></div>
								
                        <!-- END .booknow -->
                    </div>
							
                    <!-- END . booknow-sidebar -->
                </div>
							
            </div>
						
            <!-- END .sidebar -->
        </div>
				
        <!-- END .section -->
    </div>		
    <!-- END body -->
</asp:Content>