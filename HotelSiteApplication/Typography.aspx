<%@ Page Inherits="Typography" Title="Title" Language="C#" MasterPageFile="~/Site.Master" Codebehind="Typography.aspx.cs" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <!DOCTYPE html>	
    <!-- BEGIN .section -->
    <div class="section clearfix">
					
        <!-- BEGIN .main-content -->
        <div class="main-content">
						
            <h2 class="page-title">Typography</h2>
						
            <!-- BEGIN .page-content -->
            <div class="page-content">
						
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus mauris quis tellus venenatis laoreet. Morbi velit metus, sollicitudin sed molestie ut, bibendum blandit dui. Ut dictum, diam sed blandit euismod, velit nunc laoreet felis, et tempus sem risus rhoncus magna. In hac habitasse platea dictumst.</p>
						
                <h1>H1 Tag</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus mauris quis tellus venenatis laoreet. Morbi velit metus, sollicitudin sed molestie ut, bibendum blandit dui. Ut dictum, diam sed blandit euismod, velit nunc laoreet felis, et tempus sem risus rhoncus magna. In hac habitasse platea dictumst.</p>
						
                <h2>H2 Tag</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus mauris quis tellus venenatis laoreet. Morbi velit metus, sollicitudin sed molestie ut, bibendum blandit dui. Ut dictum, diam sed blandit euismod, velit nunc laoreet felis, et tempus sem risus rhoncus magna. In hac habitasse platea dictumst.</p>
						
                <h3>H3 Tag</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus mauris quis tellus venenatis laoreet. Morbi velit metus, sollicitudin sed molestie ut, bibendum blandit dui. Ut dictum, diam sed blandit euismod, velit nunc laoreet felis, et tempus sem risus rhoncus magna. In hac habitasse platea dictumst.</p>
						
                <h4>H4 Tag</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus mauris quis tellus venenatis laoreet. Morbi velit metus, sollicitudin sed molestie ut, bibendum blandit dui. Ut dictum, diam sed blandit euismod, velit nunc laoreet felis, et tempus sem risus rhoncus magna. In hac habitasse platea dictumst.</p>
						
                <h5>H5 Tag</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus mauris quis tellus venenatis laoreet. Morbi velit metus, sollicitudin sed molestie ut, bibendum blandit dui. Ut dictum, diam sed blandit euismod, velit nunc laoreet felis, et tempus sem risus rhoncus magna. In hac habitasse platea dictumst.</p>
						
                <h6>H6 Tag</h6>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus mauris quis tellus venenatis laoreet. Morbi velit metus, sollicitudin sed molestie ut, bibendum blandit dui. Ut dictum, diam sed blandit euismod, velit nunc laoreet felis, et tempus sem risus rhoncus magna. In hac habitasse platea dictumst.</p>
							
                <h3>Blockquote</h3>
                <blockquote>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus mauris quis tellus venenatis laoreet. Morbi velit metus, sollicitudin sed molestie ut, bibendum blandit dui. Ut dictum, diam sed blandit euismod, velit nunc laoreet felis, et tempus sem risus rhoncus magna. In hac habitasse platea dictumst.</p>
                </blockquote>
							
                <h3>Dropcap</h3>
                <p><span class="dropcap">L</span>orem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus mauris quis tellus venenatis laoreet. Morbi velit metus, sollicitudin sed molestie ut, bibendum blandit dui. Ut dictum, diam sed blandit euismod, velit nunc laoreet felis, et tempus sem risus rhoncus magna. In hac habitasse platea dictumst.</p>
							
                <h3>Buttons</h3>
                <p style="display: block; margin: 0;"><a href="#" class="button1">Button Style 1</a></p>
                <div style="clear: both; height: 20px;"></div>
                <p style="display: block; margin: 0;"><a href="#" class="button2">Button Style 2</a></p>
                <div style="clear: both; height: 20px; margin: 0;"></div>
                <p style="display: block;"><a href="#" class="button3">Button Style 3</a></p>
                <div style="clear: both; height: 20px; margin: 0;"></div>
                <p style="display: block;"><a href="#" class="button4">Button Style 4</a></p>
                <div style="clear: both; height: 20px; margin: 0;"></div>
                <p style="display: block;"><a href="#" class="button4" style="background: #e26143; border: none; color: #fff;">Button Style 4 (Custom Colour)</a></p>
                <div style="clear: both; height: 20px; margin: 0;"></div>
							
                <h3>Table</h3>
                <table>
                    <thead>
                        <tr>
                            <th>Title 1</th>
                            <th>Title 2</th>
                            <th>Title 3</th>
                            <th>Title 4</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Content 1</td>
                            <td>Content 1</td>
                            <td>Content 1</td>
                            <td>Content 1</td>
                        </tr>
                        <tr>
                            <td>Content 2</td>
                            <td>Content 2</td>
                            <td>Content 2</td>
                            <td>Content 2</td>
                        </tr>
                        <tr>
                            <td>Content 3</td>
                            <td>Content 3</td>
                            <td>Content 3</td>
                            <td>Content 3</td>
                        </tr>
                        <tr>
                            <td>Content 4</td>
                            <td>Content 4</td>
                            <td>Content 4</td>
                            <td>Content 4</td>
                        </tr>
                    </tbody>
                </table>
							
                <h3>Alert &amp; Messages</h3>
                <div class="msg default"><p>This is an information message, it's not very important</p></div>
                <div class="msg notice"><p>This is a notice message, might be worth paying attention</p></div>
                <div class="msg success"><p>This is a success message, well done!</p></div>
                <div class="msg fail"><p>This is an error message, uh oh!</p></div>
							
                <!-- BEGIN .clearfix -->
                <div class="clearfix">

                    <!-- BEGIN .one-half -->
                    <div class="one-half">
                        <h3>List Style #1</h3>
                        <ul class="list1">
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                        </ul>
                        <!-- END .one-half -->
                    </div>
							
                    <!-- BEGIN .one-half .last-col -->
                    <div class="one-half last-col">
                        <h3>List Style #2</h3>
                        <ul class="list2">
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                        </ul>
                        <!-- END .one-half .last-col -->
                    </div>
                    <!-- END .clearfix -->
                </div>
							
                <!-- BEGIN .clearfix -->
                <div class="clearfix">

                    <!-- BEGIN .one-half -->
                    <div class="one-half">
										
                        <h3>List Style #3</h3>
                        <ul class="list3">
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                        </ul>
										
                        <!-- END .one-half -->
                    </div>

                    <!-- BEGIN .one-half .last-col -->
                    <div class="one-half last-col">
							
                        <h3>List Style #4</h3>
                        <ul class="list4">
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                        </ul>
							
                        <!-- END .one-half .last-col -->
                    </div>
                    <!-- END .clearfix -->
                </div>
									
                <!-- BEGIN .clearfix -->
                <div class="clearfix">

                    <!-- BEGIN .one-half -->
                    <div class="one-half">
                        <h3>Unordered List Default</h3>
                        <ul>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                        </ul>
                        <!-- END .one-half -->
                    </div>

                    <!-- BEGIN .one-half .last-col -->
                    <div class="one-half last-col">
                        <h3>Ordered List Default</h3>

                        <ol>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                            <ol>
                                <li>List Item #1</li>
                                <li>List Item #1</li>
                            </ol>
                            <li>List Item #1</li>
                            <li>List Item #1</li>
                        </ol>

                        <!-- END .one-half .last-col -->
                    </div>
                    <!-- END .clearfix -->
                </div>
							
                <!-- END .main-content -->
            </div>
					
            <!-- END .two-thirds -->
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
</asp:Content>