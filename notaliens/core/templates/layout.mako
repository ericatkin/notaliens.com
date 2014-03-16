<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>NotAliens.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="${request.static_url('notaliens:static/css/bootstrap.min.css')}" rel="stylesheet">
    <script type="text/javascript" src="${request.static_url('notaliens:static/js/jquery.js')}"></script>

    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>

    <link href="${request.static_url('notaliens:static/css/bootstrap-responsive.min.css')}" rel="stylesheet">
    <link href="${request.static_url('notaliens:static/css/notaliens.css')}" rel="stylesheet">


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <%block name="css"/>
    ${css()}

  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container-fluid">
            <a class="brand" href="#">Not Aliens</a>
              <div class="nav-collapse collapse">
                <ul class="nav">
                  % if request.matched_route:
                    <li ${'class=active' if request.matched_route.name.startswith('index') else ''}><a href="/">Home</a></li>
                    <li ${'class=active' if request.matched_route.name.startswith('people') else ''}><a href="/people/">People</a></li>
                    <li ${'class=active' if request.matched_route.name.startswith('sites') else ''}><a href="/sites/">Sites</a></li>
                    <li ${'class=active' if request.matched_route.name.startswith('jobs') else ''}><a href="/jobs/">Jobs</a></li>
                  % endif
                </ul>
                <div class="navbar-form pull-right">
                  % if request.user:
                    Welcome ${request.user.profile.display_name} (<a href="${request.route_url('logout')}">Logout</a>)
                  % else:
                    <a href="${request.route_url('login')}">Login</a>
                  % endif
                </div>
              </div><!--/.nav-collapse -->
          </div>
        </div>
      </div>

      <div class="container-fluid">
        ${render_flash_messages()|n}
        ${next.body()}
        <hr>

        <footer>
          <p>&copy; NotAliens 2013</p>
        </footer>

      </div><!--/.fluid-container-->


    <!-- Le javascript
    ================================================== -->
    <script type="text/javascript" src="${request.static_url('notaliens:static/js/jquery-ui.js')}"></script>
    <script type="text/javascript" src="${request.static_url('notaliens:static/js/underscore.js')}"></script>
    <script type="text/javascript" src="${request.static_url('notaliens:static/js/backbone.js')}"></script>
    <script type="text/javascript" src="${request.static_url('notaliens:static/js/backbone.marionette.js')}"></script>
    <script type="text/javascript" src="${request.static_url('notaliens:static/js/backbone.routemanager.js')}"></script>
    <script type="text/javascript" src="${request.static_url('notaliens:static/js/hogan-3.0.0.js')}"></script>
    <script type="text/javascript" src="${request.static_url('notaliens:static/js/moment.js')}"></script>

    <%block name="javascript"/>
    ${javascript()}

  </body>
</html>
