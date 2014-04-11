<!DOCTYPE html>
<html lang="en">
        <head>
                <meta charset="utf-8" />
                <title>Spartan Fitness Center Dashboard</title>
 
                <meta name="description" content="" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 
                <!-- basic styles -->
 
                {{ HTML::style('assets/css/bootstrap.min.css') }}
                {{ HTML::style('assets/css/font-awesome.min.css') }}
 
 
                <!--[if IE 7]>
                  {{ HTML::style('assets/css/font-awesome-ie7.min.css') }}
                <![endif]-->
 
                <!-- page specific plugin styles -->
                @yield('styles')
                <!-- fonts -->
 
                {{ HTML::style('assets/css/ace-fonts.css') }}
 
                <!-- ace styles -->
 
                {{ HTML::style('assets/css/ace.min.css') }}
                {{ HTML::style('assets/css/ace-rtl.min.css') }}
                {{ HTML::style('assets/css/ace-skins.min.css') }}
 
                <!--[if lte IE 8]>
                  {{ HTML::style('assets/css/ace-ie.min.css') }}
                <![endif]-->
 
                <!-- inline styles related to this page -->
 
                <!-- ace settings handler -->
 
                {{ HTML::script('assets/js/ace-extra.min.js') }}
 
                <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
 
                <!--[if lt IE 9]>
                {{ HTML::script('assets/js/html5shiv.js') }}
                {{ HTML::script('assets/js/respond.min.js') }}
                <![endif]-->
        </head>
 
        <body>
                <div class="navbar navbar-default" id="navbar" style='background:#290000'>
                        <script type="text/javascript">
                                try{ace.settings.check('navbar' , 'fixed')}catch(e){}
                        </script>
 
                        <div class="navbar-container" id="navbar-container">
                                <div class="navbar-header pull-left">
                                        <a href="#" class="navbar-brand">
                                                <small>
                                                        <i class="icon-exchange"></i>
                                                        Spartan Fitness Center Dashboard
                                                </small>
                                        </a><!-- /.brand -->
                                </div><!-- /.navbar-header -->
 
                                <div class="navbar-header pull-right" role="navigation">
                                        <ul class="nav ace-nav">
                                               
 
                                                                <li class="divider"></li>
 
                                                                <li>
                                                                        <a href="{{ URL::to('dashboard/logout') }}">
                                                                                <i class="icon-off"></i>
                                                                                Logout
                                                                        </a>
                                                                </li>
                                                        </ul>
                                                </li>
                                        </ul><!-- /.ace-nav -->
                                </div><!-- /.navbar-header -->
                        </div><!-- /.container -->
                </div>

                <li class="divider"></li>
 
                <div class="main-container" id="main-container">
                        <script type="text/javascript">
                                try{ace.settings.check('main-container' , 'fixed')}catch(e){}
                        </script>
 
                        <div class="main-container-inner">
                                <a class="menu-toggler" id="menu-toggler" href="#">
                                        <span class="menu-text"></span>
                                </a>
 
                                <div class="sidebar" id="sidebar">
                                        <script type="text/javascript">
                                                try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
                                        </script>
 
                                        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                                                <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
       
                                                </div>
 
                                                <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                                                        <span class="btn btn-success"></span>
 
                                                        <span class="btn btn-info"></span>
 
                                                        <span class="btn btn-warning"></span>
 
                                                        <span class="btn btn-danger"></span>
                                                </div>
                                        </div><!-- #sidebar-shortcuts -->
 
                                        <ul class="nav nav-list" >
                  
                                                <li class="@if(Request::is('dashboard/page') || Request::is('dashboard/page/*'))active@endif">
                                                        <a href="{{ URL::to('dashboard/page') }}">
                                                                <i class="icon-briefcase"></i>
                                                                <span class="menu-text"> Page </span>
                                                        </a>
                                                </li>
                                                <li class="@if(Request::is('dashbord/gallery'))active@endif">
                                                        <a href="{{ URL::to('dashboard/gallery') }}">
                                                                <i class="icon-dashboard"></i>
                                                                <span class="menu-text"> Gallery </span>
                                                        </a>
                                                </li>
                                                  <li class="@if(Request::is('dashbord/video'))active@endif">
                                                        <a href="{{ URL::to('dashboard/video') }}">
                                                                <i class="icon-dashboard"></i>
                                                                <span class="menu-text"> Videos </span>
                                                        </a>
                                                </li>
                                                <li class="@if(Request::is('dashbord/newsletter'))active@endif">
                                                        <a href="{{ URL::to('dashboard/newsletter') }}">
                                                                <i class="icon-dashboard"></i>
                                                                <span class="menu-text"> Newsletter </span>
                                                        </a>
                                                </li>
                                        </ul><!-- /.nav-list -->
 
                                        <div class="sidebar-collapse" id="sidebar-collapse">
                                                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
                                        </div>
 
                                        <script type="text/javascript">
                                                try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
                                        </script>
                                </div>
 
                                <div class="main-content" >
                                        <div class="breadcrumbs" id="breadcrumbs">
                                                <script type="text/javascript">
                                                        try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                                                </script>
 
                                                @yield('breadcrumb')
                                                <!-- .breadcrumb -->
 

                                        </div>
 
                                        <div class="page-content"style='background:#949494'>
 
                                                <div class="page-header">
                                                        @yield('header')
                                                </div><!-- /.page-header -->
 
                                                <div class="row">
                                                        <div class="col-xs-12">
                                                                <!-- PAGE CONTENT BEGINS -->
                                                                @yield('content')
                                                                <!-- PAGE CONTENT ENDS -->
                                                        </div><!-- /.col -->
                                                </div><!-- /.row -->
                                        </div><!-- /.page-content -->
                                </div><!-- /.main-content -->
 
                                <div class="ace-settings-container" id="ace-settings-container">
                                        <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                                                <i class="icon-cog bigger-150"></i>
                                        </div>
 
                                        <div class="ace-settings-box" id="ace-settings-box">
                                                <div>
                                                        <div class="pull-left">
                                                                <select id="skin-colorpicker" class="hide">
                                                                        <option data-skin="default" value="#4B0E0F">#438EB9</option>
                                                                        <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                                                        <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                                                        <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                                                </select>
                                                        </div>
                                                        <span>&nbsp; Choose Skin</span>
                                                </div>
 
                                                <div>
                                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                                                        <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                                                </div>
 
                                                <div>
                                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                                                        <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                                                </div>
 
                                                <div>
                                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                                                        <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                                                </div>
 
                                                <div>
                                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                                                        <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                                                </div>
 
                                                <div>
                                                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                                                        <label class="lbl" for="ace-settings-add-container">
                                                                Inside
                                                                <b>.container</b>
                                                        </label>
                                                </div>
                                        </div>
                                </div><!-- /#ace-settings-container -->
                        </div><!-- /.main-container-inner -->
 
                        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                                <i class="icon-double-angle-up icon-only bigger-110"></i>
                        </a>
                </div><!-- /.main-container -->
 
                <!-- basic scripts -->
 
                <!--[if !IE]> -->
 
                <script type="text/javascript">
                        window.jQuery || document.write("<script src='{{ URL::to('assets/js/jquery-2.0.3.min.js') }}'>"+"<"+"/script>");
                </script>
 
                <!-- <![endif]-->
 
                <!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='{{ URL::to('assets/js/jquery-1.10.2.min.js') }}'>"+"<"+"/script>");
</script>
<![endif]-->
 
                <script type="text/javascript">
                        if("ontouchend" in document) document.write("<script src='{{ URL::to('assets/js/jquery.mobile.custom.min.js') }}'>"+"<"+"/script>");
                </script>
                {{ HTML::script('assets/js/bootstrap.min.js') }}
                {{ HTML::script('assets/js/typeahead-bs2.min.js') }}
 
                <!-- ace scripts -->
 
                {{ HTML::script('assets/js/ace-elements.min.js') }}
                {{ HTML::script('assets/js/ace.min.js') }}
 
                <!-- page specific plugin scripts -->
                <!-- inline scripts related to this page -->
                @yield('scripts')
        </body>
</html>