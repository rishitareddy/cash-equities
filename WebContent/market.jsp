<%@page import="com.trade.ShareInfo"%>
<%@page import="java.util.List"%>
<%@page import="com.crud.MarketCRUD"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
  <title>DBS Stock Trader</title>
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/font-awesome.css">
  <link rel="stylesheet" href="plugins/animate%2banimo.css">
  <link rel="stylesheet" href="plugins/csspinner.min.css">
  <link rel="stylesheet" href="css/app.css">
  <link rel="stylesheet" href="css/phpwallet1.css">
  <script src="js/modernizr.js"></script>
  <script src="js/fastclick.js"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
  <div id="overlayLoader">
    <div id="preloader">
      <span></span>/
      <span></span>
    </div>
  </div>


  <section class="wrapper">
    <nav class="navbar navbar-default navbar-top navbar-fixed-top">
      <div class="navbar-header">
        <a href="index.html" class="navbar-brand">
          <div class="brand-logo"><i> <img src="css/dbslogo.png" height="35px" width="35px" style="border-radius:50%"> </i> <b style="font-weight:700; color:#DD1414">STOCK</b>TRADER.com</div>
          <div class="brand-logo-collapsed"><i><img src="css/dbslogo.png" height="40px" width="40px" style="border-radius:50%; top:25px"></i></div>
        </a>
      </div>
      <div class="nav-wrapper">
        <ul class="nav navbar-nav mt0">
          <li>
            <a href="#" data-toggle="aside">
                     <em class="fa fa-align-left"></em>
                     </a>
          </li>
        </ul>
        <ul class="nav navbar-nav navbar-right mt0">
          <li class="dropdown dropdown-list">
            <a href="wallet.html" data-toggle="dropdown" data-play="fadeIn" class="dropdown-toggle">
                     <strong><i class="fa fa-inr"></i> Wallet</strong>
                     </a>

      </li>
      <li class="dropdown dropdown-list">
        <a href="" data-toggle="dropdown" data-play="fadeIn" class="dropdown-toggle">
                        <em class="fa fa-bell"></em>
                        <div class="label label-danger">3</div>
                     </a>
        <ul class="dropdown-menu col-md-4 col-sm-6 col-xs-12">
          <li>
            <div class="table-responsive">
              <table class="table table-striped table-bordered table-hover">
                <thead>
                  <tr>
                    <th>Buy/Sell</th>
                    <th>Progress</th>
                    <th>Date</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>Buy order SC</td>
                    <td>
                      <div class="progress progress-striped progress-xs">
                        <div role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-success w-100-p">
                          <span class="sr-only">100% Complete</span>
                        </div>
                      </div>
                    </td>
                    <td>
                      <em class="fa fa-calendar fa-fw text-muted"></em>02/19/2018
                    </td>
                    <td class="text-center">
                      Complete
                    </td>
                  </tr>
                  <tr>
                    <td>Sell order SC</td>
                    <td>
                      <div class="progress progress-striped progress-xs">
                        <div role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-danger w-50-p">
                          <span class="sr-only">50% Complete</span>
                        </div>
                      </div>
                    </td>
                    <td>
                      <em class="fa fa-calendar fa-fw text-muted"></em>02/18/2018
                    </td>
                    <td class="text-center">
                      50% Filled
                    </td>
                  </tr>
                  <tr>
                    <td>Buy order IOTA</td>
                    <td>
                      <div class="progress progress-striped progress-xs">
                        <div role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-success w-50-p">
                          <span class="sr-only">50% Complete</span>
                        </div>
                      </div>
                    </td>
                    <td>
                      <em class="fa fa-calendar fa-fw text-muted"></em>02/17/2018
                    </td>
                    <td class="text-center">
                      50% Filled
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="#" data-toggle="dropdown" data-play="fadeIn" class="dropdown-toggle">
                     <em class="fa fa-user"></em>
                     </a>
        <ul class="dropdown-menu">
          <li><a href="#">Profile</a>
          </li>
          <li class="divider"></li>
          <li><a href="landing.html">Logout</a>
          </li>
        </ul>
      </li>
      </ul>
      </div>
    </nav>
    <aside class="aside">
      <nav class="sidebar">
        <ul class="nav">
          <li>
            <div data-toggle="collapse-next" class="item user-block has-submenu">
              <div class="user-block-picture">
                <img src="02.jpg" alt="Avatar" width="60" height="60" class="img-thumbnail img-circle account-img-mb">
              </div>
              <div class="user-block-info">
                <span class="user-block-name item-text">${username}</span>
                <span class="user-block-role"><i class="fa fa-check text-green"></i> Verified</span>
                <div class="label label-primary"><i class="fa fa-chevron-down"></i> Account Info</div>
              </div>
            </div>
            <ul class="nav collapse">
              <li><a href="#open_orders">Open Orders</a>
              </li>
              <li><a href="#history">Transactions History</a>
              </li>
              <li><a href="#market">Market History</a>
              </li>
              <li>
                <a href="javascript:void(0);">
                              Verification
                              <div class="label label-success pull-right"><i class="fa fa-check"></i> Verified</div>
                           </a>
              </li>
            </ul>
          </li>
          <li class="active">
            <a href="index.html" onclick="location.href='index.html'" title="index" data-toggle="collapse-next">
                        <em class="fa fa-home"></em>
                        <div class="label pull-right"><i class="fa fa-line-chart"></i></div>
                        <span class="item-text">Markets</span>
                     </a>
            </li>
            <li>
              <a href="portfolio.html" title="Dashboard" class="">
                        <em class="fa fa-btc"></em>
                        <span class="item-text">Portfolio</span>
                     </a>
            </li>
            <li class="">
              <a href="#order_book" title="Dashboard" class="">
                        <em class="fa fa-gear"></em>
                        <span class="item-text">Order Book</span>
                     </a>
            </li>
            <li>
              <a title="Pages" href="#history">
                     <em class="fa fa-file-text"></em>
                     <span class="item-text">My Order History</span>
                     </a>

            </li>
            <li>
              <a title="Pages" href="#history">
                     <em class="fa fa-bell"></em>
                     <span class="item-text">Transaction status</span>
                     </a>

            </li>
        </ul>
      </nav>
    </aside>



    <section>

      <!--Scroll ticker -->

      <iframe allowtransparency="true" id="macroaxis_stock_ticker" name="macroaxis_stock_ticker" marginheight="0" marginwidth="0" scrolling="NO" height="31px" width="100%" frameborder="0" src="ticker.jsp"></iframe>
       <!--<jsp:include page="/ticker" />-->
      <!-- ticker close-->

      <section class="main-content">

        <h3>Dashboard
               </h3>
        <div class="row">
          <div class="col-md-9">
            <!-- First Row Starts Here -->
            <div class="row">
              <div class="col-lg-3 col-sm-6">
                <div data-toggle="play-animation" data-play="fadeInDown" data-offset="0" data-delay="100" class="panel widget">
                  <div class="panel-body bg-primary">
                    <div class="row row-table row-flush">
                      <div class="col-xs-12">
                        <p class="mb0">$759,781,417.92 <em class="fa fa-level-up">
                                          </em>
                        </p>
                        <h4 class="m0">Market Cap</h4>
                        <span class="m-t-10"><i class="fa fa-dollar"></i> Total Market Capital
                                       </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6">
                <div data-toggle="play-animation" data-play="fadeInDown" data-offset="0" data-delay="500" class="panel widget">
                  <div class="panel-body bg-warning">
                    <div class="row row-table row-flush">
                      <div class="col-xs-12">
                        <p class="mb0">$1,947,201.24 <em class="fa fa-level-down"></em></p>
                        <h4 class="m0">Trade Volume</h4>
                        <span class="f-left m-t-10">
                                       <i class="fa fa-dollar"></i> 24h Trade Volume
                                       </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6">
                <div data-toggle="play-animation" data-play="fadeInDown" data-offset="0" data-delay="1000" class="panel widget">
                  <div class="panel-body bg-danger">
                    <div class="row row-table row-flush">
                      <div class="col-xs-12">
                        <p class="mb0">32.4 Billions <em class="fa fa-refresh"></em></p>
                        <h4 class="m0">Circ Supply</h4>
                        <span class="m-t-10">
                                       <i class="text-c-green f-16 fa fa-refresh"></i> Circulating Supply
                                       </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6">
                <div data-toggle="play-animation" data-play="fadeInDown" data-offset="0" data-delay="1500" class="panel widget">
                  <div class="panel-body bg-success">
                    <div class="row row-table row-flush">
                      <div class="col-xs-12">
                        <p class="mb0">40 Billions <em class="fa fa-money"></em></p>
                        <h4 class="m0">Total Supply</h4>
                        <span class="f-left m-t-10">
                                       <i class="fa fa-money"></i> Total Supply
                                       </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- First Row Ends Here -->
            <div class="row">
              <div class="col-lg-12">
                <div class="panel panel-default">
                  <div class="panel-heading">All Markets
                    <a href="#" data-perform="panel-collapse" data-toggle="tooltip" title="Collapse Panel" class="pull-right">
                           <em class="fa fa-minus"></em>
                           </a>
                  </div>
                  <div class="panel-wrapper collapse in">
                    <div class="panel panel-default">
                      <div class="panel-body" id="securitytable">
                      <jsp:include page="/markettable" />
                        
                      </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="panel panel-default">
                  <div class="panel-heading">Bid Price
                    <a href="#" data-perform="panel-collapse" data-toggle="tooltip" title="Collapse Panel" class="pull-right">
                           <em class="fa fa-minus"></em>
                           </a>
                  </div>
                  <div class="pannel panel-body">
                    <label style="font-size:15px" class="col-sm-2 control-label m-t-9">Units  </label>
                    <div class="input-group col-sm-10 m-b">
                      <input type="number" placeholder="" class="form-control text-right">
                    </div>
                    <div class="m-t-9">
                      <label class="col-sm-2 control-label m-t-9">Bid</label>
                      <div class="input-group col-sm-10 m-b">
                        <input type="number" placeholder="" class="form-control text-right">
                      </div>
                    </div>
                    <div class="row">
                      <div class="btn-group m-t-9 col-md-6 col-sm-12 col-xs-12">
                        <button style="background-color:#337ab7;border-color:#2e6da4" type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle btn-block">Limit
                                 <span class="caret"></span>
                                 </button>
                        <ul role="menu" class="dropdown-menu">
                          <li><a href="javascript:void(0);">Limit</a>
                          </li>
                          <li><a href="javascript:void(0);">Conditional</a>
                          </li>
                        </ul>
                      </div>

                    </div>
                    <div class="m-t-9">
                      <label class="col-sm-2 control-label m-t-9">Total</label>
                      <div class="input-group col-sm-10 m-b">
                        <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                        <input type="text" placeholder="" class="form-control text-right">
                      </div>
                    </div>
                    <div class="m-t-9">
                      <button style="background-color:#337ab7;border-color:#2e6da4" type="button" class="btn btn-primary btn-block"><i class="fa fa-plus"></i> Buy Stock</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="panel panel-default">
                  <div class="panel-heading">Ask Price
                    <a href="#" data-perform="panel-collapse" data-toggle="tooltip" title="Collapse Panel" class="pull-right">
                           <em class="fa fa-minus"></em>
                           </a>
                  </div>
                  <div class="pannel panel-body">
                    <label class="col-sm-2 control-label m-t-9">Units</label>
                    <div class="input-group col-sm-10 m-b">
                      <input type="text" placeholder="" class="form-control text-right">
                    </div>
                    <div class="m-t-9">
                      <label class="col-sm-2 control-label m-t-9">Ask</label>
                      <div class="input-group m-b">
                        <input type="number" class="form-control text-right" placeholder="">
                      </div>
                    </div>
                    <div class="row">
                      <div class="btn-group m-t-9 col-md-6 col-sm-12 col-xs-12">
                        <button style="background-color:#337ab7;border-color:#2e6da4" type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle btn-block">Limit
                                 <span class="caret"></span>
                                 </button>
                        <ul role="menu" class="dropdown-menu">
                          <li><a href="javascript:void(0);">Limit</a>
                          </li>
                          <li><a href="javascript:void(0);">Conditional</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="m-t-9">
                      <label class="col-sm-2 control-label m-t-9">Total</label>
                      <div class="input-group col-sm-10 m-b">
                        <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                        <input type="number" placeholder="" class="form-control text-right">
                      </div>
                    </div>
                    <div class="m-t-9">
                      <button style="background-color:#337ab7;border-color:#2e6da4" type="button" class="btn btn-primary btn-block"><i class="fa fa-minus"></i> Sell Stock</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Orders Book -->
            <div class="row" id="order_book">
              <div class="col-md-12">
                <div class="panel panel-default">
                  <div class="panel-heading">Orders Book
                    <a href="javascript:void(0);" data-perform="panel-collapse" data-toggle="tooltip" title="" class="pull-right" data-original-title="Collapse Panel">
                              <em class="fa fa-minus"></em>
                              </a>
                  </div>
                  <div class="panel-body">
                    <div class="row">
                      <div class="col-md-6 col-sm-12">
                        <div class="table-responsive m-t-10">
                          <table class="table table-striped table-hover table-condensed">
                            <thead>
                              <tr>

                                <th>
                                  Sum
                                </th>
                                <th>
                                  Total
                                </th>
                                <th>
                                  Size (SC)
                                </th>
                                <th>
                                  Bid (BTC)
                                </th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td class="number">0.0159</td>
                                <td class="number">0.0159</td>
                                <td class="number cursor-pointer">5680.47083071</td>
                                <td class="number cursor-pointer">0.00000280</td>
                                <td class="symbol">
                                </td>
                              </tr>
                              <tr>
                                <td class="number">0.0685</td>
                                <td class="number">0.0526</td>
                                <td class="number cursor-pointer">18851.91700000</td>
                                <td class="number cursor-pointer">0.00000279</td>
                                <td class="symbol">
                                </td>
                              </tr>
                              <tr>
                                <td class="number">0.7073</td>
                                <td class="number">0.6388</td>
                                <td class="number cursor-pointer">229789.14814763</td>
                                <td class="number cursor-pointer">0.00000278</td>
                                <td class="symbol">
                                </td>
                              </tr>
                              <tr>
                                <td class="number">2.1508</td>
                                <td class="number">1.4435</td>
                                <td class="number cursor-pointer">521105.97581155</td>
                                <td class="number cursor-pointer">0.00000277</td>
                                <td class="symbol">
                                </td>
                              </tr>
                              <tr>
                                <td class="number">5.7000</td>
                                <td class="number">3.5492</td>
                                <td class="number cursor-pointer">1285951.32360851</td>
                                <td class="number cursor-pointer">0.00000276</td>
                                <td class="symbol">
                                </td>
                              </tr>
                              <tr>
                                <td class="number">8.6771</td>
                                <td class="number">2.9771</td>
                                <td class="number cursor-pointer">1082582.56091735</td>
                                <td class="number cursor-pointer">0.00000275</td>
                                <td class="symbol">
                                </td>
                              </tr>
                              <tr>
                                <td class="number">11.6762</td>
                                <td class="number">2.9991</td>
                                <td class="number cursor-pointer">1094562.64213653</td>
                                <td class="number cursor-pointer">0.00000274</td>
                                <td class="symbol">
                                </td>
                              </tr>
                              <tr>
                                <td class="number">20.2601</td>
                                <td class="number">8.5839</td>
                                <td class="number cursor-pointer">3144290.86429987</td>
                                <td class="number cursor-pointer">0.00000273</td>
                                <td class="symbol">
                                </td>
                              </tr>
                              <tr>
                                <td class="number">21.2152</td>
                                <td class="number">0.9551</td>
                                <td class="number cursor-pointer">351142.02305649</td>
                                <td class="number cursor-pointer">0.00000272</td>
                                <td class="symbol">
                                </td>
                              </tr>
                              <tr>
                                <td class="number">23.1955</td>
                                <td class="number">1.9803</td>
                                <td class="number cursor-pointer">730741.05599659</td>
                                <td class="number cursor-pointer">0.00000271</td>
                                <td class="symbol">
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                      <div class="col-md-6 col-sm-12">
                        <div class="table-responsive">
                          <table class="table table-striped table-hover table-condensed">
                            <thead>
                              <tr>
                                <th>
                                  Ask (BTC)
                                </th>
                                <th>
                                  Size (SC)
                                </th>
                                <th>
                                  Total
                                </th>
                                <th>
                                  Sum
                                </th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td class="symbol">
                                </td>
                                <td class="number cursor-pointer">0.00000281</td>
                                <td class="number cursor-pointer">360358.10101320</td>
                                <td class="number">1.0126</td>
                                <td class="number">1.0126</td>
                              </tr>
                              <tr>
                                <td class="symbol">
                                </td>
                                <td class="number cursor-pointer">0.00000282</td>
                                <td class="number cursor-pointer">133643.37381191</td>
                                <td class="number">0.3769</td>
                                <td class="number">1.3895</td>
                              </tr>
                              <tr>
                                <td class="symbol">
                                </td>
                                <td class="number cursor-pointer">0.00000283</td>
                                <td class="number cursor-pointer">623151.30997127</td>
                                <td class="number">1.7635</td>
                                <td class="number">3.1530</td>
                              </tr>
                              <tr>
                                <td class="symbol">
                                </td>
                                <td class="number cursor-pointer">0.00000284</td>
                                <td class="number cursor-pointer">464417.50666583</td>
                                <td class="number">1.3189</td>
                                <td class="number">4.4719</td>
                              </tr>
                              <tr>
                                <td class="symbol">
                                </td>
                                <td class="number cursor-pointer">0.00000285</td>
                                <td class="number cursor-pointer">1530110.21227631</td>
                                <td class="number">4.3608</td>
                                <td class="number">8.8328</td>
                              </tr>
                              <tr>
                                <td class="symbol">
                                </td>
                                <td class="number cursor-pointer">0.00000286</td>
                                <td class="number cursor-pointer">646492.28404140</td>
                                <td class="number">1.8490</td>
                                <td class="number">10.6817</td>
                              </tr>
                              <tr>
                                <td class="symbol">
                                </td>
                                <td class="number cursor-pointer">0.00000287</td>
                                <td class="number cursor-pointer">1295584.02927247</td>
                                <td class="number">3.7183</td>
                                <td class="number">14.4001</td>
                              </tr>
                              <tr>
                                <td class="symbol">
                                </td>
                                <td class="number cursor-pointer">0.00000288</td>
                                <td class="number cursor-pointer">461747.75984107</td>
                                <td class="number">1.3298</td>
                                <td class="number">15.7299</td>
                              </tr>
                              <tr>
                                <td class="symbol">
                                </td>
                                <td class="number cursor-pointer">0.00000289</td>
                                <td class="number cursor-pointer">801337.21839318</td>
                                <td class="number">2.3159</td>
                                <td class="number">18.0458</td>
                              </tr>
                              <tr>
                                <td class="symbol">
                                </td>
                                <td class="number cursor-pointer">0.00000290</td>
                                <td class="number cursor-pointer">2518143.00186107</td>
                                <td class="number">7.3026</td>
                                <td class="number">25.3484</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Open Orders -->
              <div class="col-md-12" id="open_orders">
                <div class="panel panel-default">
                  <div class="panel-heading">Open Orders
                    <a href="#" data-perform="panel-collapse" data-toggle="tooltip" title="Collapse Panel" class="pull-right">
                              <em class="fa fa-minus"></em>
                              </a>
                  </div>
                  <div class="table-responsive">
                    <jsp:include page="/individualorder"></jsp:include>
                  </div>
                </div>
              </div>
              <!-- Market History -->
              <div class="col-md-12" id="market">
                <div class="panel panel-default">
                  <div class="panel-heading">Market History
                    <a href="#" data-perform="panel-collapse" data-toggle="tooltip" title="Collapse Panel" class="pull-right">
                              <em class="fa fa-minus"></em>
                              </a>
                  </div>
                  <!-- pranav addition-->
                  <div class="panel-wrapper collapse in">               
                  <div class="table-responsive">
                     <jsp:include page="/ordertable" />
                  </div>
                  </div>
                  
                </div>
              </div>
              <!-- My Order History -->
              <div class="col-md-12" id="history">
                <div class="panel panel-default">
                  <div class="panel-heading">My Order History
                    <a href="#" data-perform="panel-collapse" data-toggle="tooltip" title="Collapse Panel" class="pull-right">
                              <em class="fa fa-minus"></em>
                              </a>
                  </div>
                  <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                      <thead>
                        <tr>
                          <th>Closed Date</th>
                          <th>Opened Date</th>
                          <th>Type</th>
                          <th>Bid/Ask</th>
                          <th>Units Filled SC</th>
                          <th>Units Total SC</th>
                          <th>Actual Rate</th>
                          <th>Cost/Proceeds</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            01/29/2018 06:29:22 PM
                          </td>
                          <td>01/29/2018 06:27:08 PM</td>
                          <td>Limit Sell</td>
                          <td>0.00000384</td>
                          <td>25953.89501312</td>
                          <td>25953.89501312</td>
                          <td>0.00000383</td>
                          <td>0.09941380</td>
                        </tr>
                        <tr>
                          <td>
                            01/29/2018 06:29:22 PM
                          </td>
                          <td>01/29/2018 06:27:08 PM</td>
                          <td>Limit Sell</td>
                          <td>0.00000384</td>
                          <td>25953.89501312</td>
                          <td>25953.89501312</td>
                          <td>0.00000383</td>
                          <td>0.09941380</td>
                        </tr>
                        <tr>
                          <td>
                            01/29/2018 06:29:22 PM
                          </td>
                          <td>01/29/2018 06:27:08 PM</td>
                          <td>Limit Buy</td>
                          <td>0.00000384</td>
                          <td>25953.89501312</td>
                          <td>25953.89501312</td>
                          <td>0.00000383</td>
                          <td>0.09941380</td>
                        </tr>
                        <tr>
                          <td>
                            01/29/2018 06:29:22 PM
                          </td>
                          <td>01/29/2018 06:27:08 PM</td>
                          <td>Limit Sell</td>
                          <td>0.00000384</td>
                          <td>25953.89501312</td>
                          <td>25953.89501312</td>
                          <td>0.00000383</td>
                          <td>0.09941380</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
      </section>
    </section>
  </section>
  <script src="js/plugins/jquery.js"></script>
  <script src="js/plugins/velocity.js"></script>
  <script src="js/plugins/velocity.ui.js"></script>
  <script src="js/plugins/bootstrap.js"></script>
  <script src="js/plugins/chosen.jquery.js"></script>
  <script src="js/plugins/bootstrap-slider.js"></script>
  <script src="js/plugins/bootstrap-filestyle.js"></script>
  <script src="js/plugins/animo.js"></script>
  <script src="js/plugins/jquery.sparkline.js"></script>
  <script src="js/plugins/jquery.slimscroll.js"></script>
  <script src="js/plugins/jquery.dataTables.js"></script>
  <script src="js/plugins/dataTables.bootstrap.js"></script>
  <script src="js/plugins/dataTables.bootstrapPagination.js"></script>
  <script src="js/highcharts.js"></script>
  <script src="js/exporting.js"></script>
  <script src="js/plugins/dataTables.colVis.js"></script>

  <!--[if lt IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
  <script src="js/tradify.js"></script>
  <script>
    $(document).ready(function() {
      // Candlestick
      $.getJSON('tradify/data.json', function(data) {

        // create the chart
        Highcharts.stockChart('candlestickChart', {

          chart: {},


          rangeSelector: {
            selected: 1
          },

          series: [{
            type: 'candlestick',
            name: 'SC-BTC',
            data: data,
            dataGrouping: {
              units: [
                [
                  'week', // unit name
                  [1] // allowed multiples
                ],
                [
                  'month', [1, 2, 3, 4, 6]
                ]
              ]
            }
          }]
        });
      });
    });
    
    var auto_refresh = setInterval(
    	    function()
    	    {
    			$('#macroaxis_stock_ticker').fadeIn("slow");
    			$('#securitytable').load("http://localhost:8080/Cash-Equities-Master/markettable").fadeIn("slow");
    	    }, 5000);
    
    
    
    
  </script>
</body>

</html>

