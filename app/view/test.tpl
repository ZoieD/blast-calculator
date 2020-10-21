<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8"/>
    <meta name="keywords" content=""/>
    <link rel="shortcut icon" href="/public/favicon.ico" type="image/x-icon">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="/public/css/bootstrap1.css" type="text/css" rel="stylesheet" media="all">
    <link href="/public/css/style2.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="/public/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet">
    <!-- //online-fonts -->
</head>
<body>
<div class="sidenav">
    <div class="side_top">
        <h2 style="color:white; font-size: 26px">Calculate Result:</h2>
        <h4 style="color:white; text-align: left">Pressure: {{ pressure }} <br>Impulses: {{ impulses }}<br>t0: {{ t0 }}</h4>
    </div>
    <header>
        <div class="container-fluid px-lg-5 ">
            <div class="login-w3l">
                <div class="login-form">
                    <form action="/calculate" method="post">
                        <input type="text" name="n" placeholder="N" required=""/>
                        <input type="text" name="ll" placeholder="l/L" required=""/>
                        <input type="text" name="hh" placeholder="h/H" required=""/>
                        <input type="text" name="lh" placeholder="L/H" required=""/>
                        <input type="text" name="za" placeholder="Za" required=""/>
                        <input type="text" name="lra" placeholder="L/Ra" required=""/>
                        <input type="text" name="w" placeholder="W" required=""/>
                        <input type="submit" value="Calculate">
                    </form>
                </div>
                <!-- //login -->
            </div>
        </div>
    </header>
</div>
<div class="main" id="about">
    <!-- contact -->
    <section class="wedo" id="contact">
        <h3 class="w3_head mb-5">Arup</h3>
        <p class="banp mt-5">Guide</p>
        <div class="row news-grids mt-lg-5 mt-4 text-center">
            <div class="col-md-12 gal-img">
                <a href="#gal1"><img src="/public/images/guide1.jpg" alt="news image" class="img-fluid"></a>
            </div>
            <div class="service-content">
                <p>N = number of reflective surface(excluding ground and back surface)</p>
                <p>Ra = Standoff distance to target surface</p>
                <p>l,L,h,H = Dimensions of confined space</p>
                <p>Za = Scaled Distance = Ra/W⅓</p>
                <h4>Notes:</h4>
                <h5>1. B denotes Back Wall, S denotes Side Wall and R denotes Roof.</h5>
                <h5>2. Number in parenthesis indicate number, N, of reflecting surfaces adjacent to surface in question.</h5>
                <h5>3. h is always measured to the nearest reflecting surface.</h5>
                <h5>4. l is always measured to the nearest reflecting surface except for the cantilever wall where it is measured to the nearest free edge.</h5>
                <h5>5. For values of average peak pressures for barrier and cubicle arrangements shown.</h5>
                <h5>6. Required parameters: N, l/L, h/H, L/H, L/Ra, Za = Ra/W⅓</h5>
            </div>
        </div>
        <!--<div class="row mt-4">-->
            <!--<div class="col-lg-7 contact_grid_right">-->
                <!--<form action="#" method="post">-->
                    <!--<div class="row contact_top">-->
                        <!--<div class="col-sm-6">-->
                            <!--<input type="text" name="Name" placeholder="Name" required="">-->
                        <!--</div>-->
                        <!--<div class="col-sm-6">-->
                            <!--<input type="email" name="Email" placeholder="Email" required="">-->
                        <!--</div>-->
                    <!--</div>-->

                    <!--<textarea name="Message" onfocus="this.value = '';"-->
                              <!--onblur="if (this.value == '') {this.value = 'Message...';}"-->
                              <!--required="">Message...</textarea>-->
                    <!--<input type="submit" class="btn" value="Send Message">-->
                <!--</form>-->
            <!--</div>-->
        <!--</div>-->
        <div class="cpy-right text-left">
            <p>Copyright &copy; 2019.Arup All rights reserved.<a target="_blank" href="https://www.arup.com/"></a>
            </p>
        </div>
    </section>
    <!-- //contact -->
</div>

</body>
</html>