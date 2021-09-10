<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
        <!--SEO Meta Tags-->
        <meta charset="utf-8" />
        <!-- SITE TITLE -->
        <title>DBS Stock Trader</title>

        <meta http-equiv="X-UA-Compatible" content="IE=edge" />


        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">

        <!-- Icon CSS -->
        <link href="css/themify-icons.css" rel="stylesheet">

        <!-- FontAwesome -->
        <!-- <link rel="stylesheet" href="css/font-awesome.css"> -->

        <!-- Owl Carousel CSS -->
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/owl.theme.default.min.css" rel="stylesheet">

        <!-- Magnific-popup -->
        <link rel="stylesheet" href="css/magnific-popup.css">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" href="css/app.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
          <script src="js/respond.min.js"></script>
        <![endif]-->

    </head>


    <body  data-spy="scroll" data-target="#data-scroll">




        <!-- Navbar -->
        <div class="navbar navbar-custom sticky" role="navigation">
            <div class="container">
                <!-- Navbar-header -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <i class="ti-menu"></i>
                    </button>
                    <!-- LOGO -->
                    <a class="navbar-brand logo" href="landing.html">
                        <i> <img src="css/dbslogo.png" height="50px" width="50px" style="border-radius:50%"></i> <b style="font-weight:700; color:#DD1414">STOCK</b>TRADER.com
                    </a>
                </div>
                <!-- end navbar-header -->

                <!-- menu -->
                <div class="navbar-collapse collapse" id="data-scroll">
                    <ul class="nav navbar-nav navbar-right">
                         <li class="active">
                            <a href="#home">Home</a>
                        </li>
                        <!-- <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Landing <span class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-menu-dark dropdown-left-0">
                          <li><a href="landing.html">Layout One</a></li>
                          <li><a href="landing-2.html">Layout Two</a></li>
                        </ul>
                      </li> -->
                        <li>
                            <a href="#About">About</a>
                        </li>

                        <li>
                            <a href="#companies">Companies</a>
                        </li>
                        <li >
                        <a href="index.html" role="button" aria-haspopup="true" aria-expanded="false">Markets </a>

                      </li>
                        <li>
                            <a href="#blog">Blog</a>
                        </li>
                        <li>
                            <a href="HolidayCal1.html">Holiday Calendar</a>
                        </li>
                    </ul>
                </div>
                <!--/Menu -->
            </div>
            <!-- end container -->
        </div>



        <!-- HOME -->
        <section class="home bg-image home-small" id="home">

            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="home-wrapper home-intro row vertical-content">
                            <div class="col-md-6">
                                <h1>Stock Broking Meets Technology</h1>
                                <h4 class="normal-font-w">We pioneered the discount broking model in India. Now, we are breaking ground with our technology.</h4>
                                <a href="index.html" class="btn btn-custom"><i class="fa fa-line-chart"></i> Market</a>
                                <a href="https://www.youtube.com/watch?v=kkSL9UC-aMU" class="btn btn-secondary popup-video"><i class="glyphicon glyphicon-play"></i> How To Trade?</a>
                            </div>

                            <div class="col-md-5 col-sm-10 m-t-20">
                                <div class="tabbable-panel">
                                <div class="tabbable-line">

                                   <br/><br/>

                                      <div class="tab-pane active" id="tab_default_2">
                                        <form class="intro-form" action="login" id="invite-2" method="POST">
                                               <h5><i class="fa fa-key"></i> Sign in<span>Have an account? Sign in & start trading</span></h5>
                                               <input name="userid" id="fname-2" class="fname" placeholder="UserId" type="text" required="required">
                                               <input type="password" placeholder="Password" name="password" required="required">
                                               <button type="submit" class="btn btn-secondary btn-block">Sign In</button>

                                               <p>By Clicking Sign In you agree to our terms of conditions of this product</p>
                                               </form>
                                      </div>
                                </div>
                             </div>
                            </div>
                        </div>
                    </div> <!-- end col -->
                </div> <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        <!-- END HOME -->



        <!-- SERVICES -->
        <section class="section bg-lightgray" id="About">
            <div class="container">

                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-box text-center">

                            <p><span class="fa fa-bar-chart color-blue"></span> What We Do</p>
                            <h2 class="text-uppercase text-blue text-blue">Trade Confidently</h2>
                        </div>
                    </div>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <hr class="light">
                    <p class="text-faded">
                        We provide individuals and businesses a world class experience to buy and sell stocks.
                         STOCKTRADER.com is the go-to spot for traders who demand lightning fast trade execution,
                        stable wallets, and industry-best security practices. Whether you are new to trading, or a veteran, It
                        was created for you!
                    </p>
                    <div class="row"><a href="#" class="btn btn-primary">Get Started Now <i class="fa fa-sign-in"></i></a></div>
                </div>
            </div>
                <!-- end row -->

            </div> <!-- end container -->
        </section>
        <!-- end SERVICES -->

        <!-- FEATURES -->
        <section class="section">
            <div class="container">
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12 text-center">
                    <i class="fa fa-money fa-3x color-blue"></i>
                   <h4 class="title">Low Fee</h4>
                   <p>0.02% brokerage fee makes us one of the most competitive exchanges on the market</p>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12 text-center">
                    <i class="fa fa-lock fa-3x color-blue"></i>
                   <h4 class="title">Security</h4>
                   <p>The vast majority of digital assets are securely stored.</p>
                </div>


                <div class="col-md-3 col-sm-6 col-xs-12 text-center">
                    <i class="fa fa-users fa-3x color-blue"></i>
                   <h4 class="title">Experienced Team</h4>
                   <p>Our experienced team helps us deliver first class service to our clients</p>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12 text-center">
                    <i class="fa fa-support fa-3x color-blue"></i>
                   <h4 class="title">24/7 Support</h4>
                   <p>Our 24/7 support allows us to keep in touch with customers in all time zones and regions</p>
                </div>


                </div>
                <!-- end row -->

            </div> <!-- end container -->
        </section>
        <!-- end FEATURES -->


        <!-- Currencies -->
        <section class="section bg-lightgray" id="companies">
            <div class="container">
                <div class="row text-center">
                    <div class="col-sm-12">
                        <div class="title-box text-center">
                            <p><span class="fa fa-money color-blue"></span>Stocks to Trade</p>
                            <h2 class="text-uppercase text-blue text-blue">TOP COMPANIES</h2>
                        </div>
                    </div>
                  </div>
                  <div class="row text-center" style="margin-left:150px">
                    <div class="col-md-1 col-sm-2 col-xs-4 m-t-9 text-center" style="margin-left:15px; margin-right:15px">
                        <a href="index-2.html">
                        <img class="w-80" src="images/titan.png" alt="ada" height="50px" width="120px">
                        </a>

                    </div>

                    <div class="col-md-1 col-sm-2 col-xs-4 m-t-9 text-center" style="margin-left:15px; margin-right:15px">
                         <a href="index-2.html">
                        <img class="w-80" src="images/eicher.jpg" alt="ark" height="50px" width="130px">
                        </a>

                    </div>

                    <div class="col-md-1 col-sm-2 col-xs-4 m-t-9 text-center" style="margin-left:15px; margin-right:15px">
                         <a href="index-2.html">
                        <img class="w-80" src="images/Airtel.png" alt="trx" height="50px" width="150px">
                        </a>
                    </div>

                    <div class="col-md-1 col-sm-2 col-xs-4 m-t-9 text-center" style="margin-left:15px; margin-right:15px">
                         <a href="index-2.html">
                        <img class="w-80" src="images/maruti.jpeg" alt="eos" height="50px" width="120px">
                        </a>
                    </div>

                    <div class="col-md-1 col-sm-2 col-xs-4 m-t-9 text-center" style="margin-left:15px; margin-right:15px">
                         <a href="index-2.html">
                        <img class="w-80" src="images/cipla.png" alt="qtum" height="50px" width="190px">
                        </a>
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4 m-t-9 text-center" style="margin-left:15px; margin-right:15px">
                         <a href="index-2.html">
                        <img class="w-80" src="images/tcs.png" alt="btc" height="50px" width="190px">
                        </a>
                    </div>
                    <div class="col-md-1 col-sm-2 col-xs-4 m-t-9 text-center" style="margin-left:15px; margin-right:15px">
                         <a href="index-2.html">
                        <img class="w-80" src="images/hdfc2.jpg" alt="eth" height="60px" width="40px">
                        </a>
                    </div>


                </div>
              </div>
            </div> <!-- end container -->
        </section>
        <!-- end Currencies -->





        <!-- BLOG -->
        <section class="section bg-lightgray" id="blog">
            <div class="container">

                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-box text-center">

                            <p><span class="fa fa-bullhorn color-blue"></span>From our Blog</p>
                            <h2 class="text-uppercase text-blue">News & Stories</h2>
                        </div>
                    </div>
                </div>
                <!-- end row -->

                <div class="row">
                    <div class="col-sm-4">
                        <div class="blog-box">
                            <div class="blog-box-content">
                                <h4 class="blog-grid-title-md">Kick-started operations on the 15th of August, 2010</h4>
                                <p>In addition, we run a number of popular open online educational and community initiatives to empower retail traders and investors. </p>
                            </div>
                            <div class="blog-box-footer">
                                <a href="#" class="btn btn-sm btn-custom"> Read more <p class="label label-warning"></p></a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="blog-box">
                            <div class="blog-box-content">
                                <h4 class="blog-grid-title-md">Disruptive pricing models and in-house technology</h4>
                                <p>Rainmatter, our fintech fund and incubator has invested in several fintech startups with the goal of growing the Indian capital markets.</p>
                            </div>
                            <div class="blog-box-footer">
                                <a href="#" class="btn btn-sm btn-custom"> Read more <p class="label label-warning"></p></a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="blog-box">
                            <div class="blog-box-content">
                                <h4 class="blog-grid-title-md"><a href="#">Over one million clients place several million orders every day</a></h4>
                                <p>And yet, we're are always up to something new every day.</p>
                            </div>
                            <div class="blog-box-footer">
                                <a href="#" class="btn btn-sm btn-custom"> Read more <p class="label label-warning"></p></a>
                            </div>
                        </div>
                    </div>

                </div> <!-- end row -->

            </div> <!-- end container -->
        </section>
        <!-- end BLOG -->



        <!-- FOOTER -->
        <footer class="bg-dark footer">
            <div class="container">
                <div class="row">

                    <div class="col-md-4 col-sm-12">
                        <h4> <i> <img src="css/dbslogo.png" height="50px" width="50px" style="border-radius:50%"></i> <b style="color:#DD1414">STOCK</b>TRADER.com</h4>
                        <p>Prevent unauthorised transactions in your account. Update your mobile numbers/email IDs with your stock brokers. Receive information of your transactions directly from Exchange on your mobile/email at the end of the day. Issued in the interest of investors</p>

                        <ul class="list-inline social">
                            <li>
                                <a href="javascript:void(0);" class="bg-twitter"><i class="ti-twitter-alt"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="bg-dribbble"><i class="ti-dribbble"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="bg-linkedin"><i class="ti-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="bg-googleplus"><i class="ti-google"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="bg-facebook"><i class="ti-facebook"></i></a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-md-3 col-sm-6 col-md-offset-2">
                        <h5>Solutions</h5>
                        <ul class="list-unstyled footer-list">
                           <li><a href="#">Brokerage Fee Info</a></li>
                           <li><a href="#">Start Trading</a></li>
                           <li><a href="#">Blog Posts</a></li>
                        </ul>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <h5>Useful Links</h5>
                        <ul class="list-unstyled footer-list">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">FAQ</a></li>
                        </ul>
                    </div>

                </div> <!-- end row -->


            </div> <!-- end container -->
        </footer>
        <!-- end FOOTER -->


        <!-- COPYRIGHT -->
        <div class="footer-alt bg-dark">
            <p class="copy-rights">2018 © STOCKTRADER. All Rights Reserved</p>
        </div>




        <!-- js placed at the end of the document so the pages load faster -->
        <script src="js/plugins/jquery.js"></script>
        <script src="js/plugins/bootstrap.js"></script>

        <!-- Sticky Header -->
        <script src="js/plugins/jquery.sticky.js"></script>

        <!-- Jquery easing -->
        <script src="js/plugins/jquery.easing.1.4.1.js"></script>

        <!-- Owl Carousel -->
        <script src="js/plugins/owl.carousel.min.js"></script>

        <!-- Magnific Popup -->
        <script src="js/plugins/jquery.magnific-popup.js"></script>

        <!-- Custom js -->
        <script src="js/landing.js"></script>

        <script>
            jQuery(document).ready(function($) {
                $('.owl-carousel').owlCarousel({
                    loop:true,
                    margin:10,
                    nav:false,
                    autoplay: true,
                    autoplayTimeout: 4000,
                    responsive:{
                        0:{
                            items:1
                        }
                    }
                });
            });
        </script>

    </body>
</html>
