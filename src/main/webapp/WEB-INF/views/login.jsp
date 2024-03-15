<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>기역기역</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="resources/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="resources/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="resources/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid px-3">
    <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
            <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
                <div class="mb-5"><a href="/">
                    <img class="img-fluid mb-3" src="resources/img/logo.png" alt="..." style="max-width: 4rem;">
                </a>
                    <h2>기역기역에 어서오세요!</h2>
                </div>
                <form class="form-validate" action="/login" method="POST">
                    <div class="mb-4">
                        <label class="form-label" for="loginUsername"> 이메일 주소</label>
                        <input class="form-control" name="member_email" id="loginUsername" type="email"
                               placeholder="기역기역@address.com" autocomplete="off" required
                               data-msg="Please enter your email">
                    </div>
                    <div class="mb-4">
                        <div class="row">
                            <div class="col">
                                <label class="form-label" for="loginPassword"> 비밀번호</label>
                            </div>
                        </div>
                        <input class="form-control" name="member_pw" id="loginPassword" placeholder="Password"
                               type="password" required data-msg="Please enter your password">
                    </div>
                    <div class="mb-4">
                    </div>
                    <!-- Submit-->
                    <div class="d-grid">
                        <button class="btn btn-lg btn-primary">Sign in</button>
                    </div>
                    <hr class="my-4">
                    <p class="text-center"><small class="text-muted text-center">Don't have an account yet? <a
                            href="/signup">Sign Up </a></small></p>
                </form>
                <a class="close-absolute me-md-5 me-xl-6 pt-5" href="index.html">
                    <svg class="svg-icon w-3rem h-3rem">
                        <use xlink:href="#close-1"></use>
                    </svg>
                </a>
            </div>
        </div>
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
            <!-- Image-->
            <div class="bg-cover h-100 me-n3"
                 style="background-image: url(resources/img/index/photo/photo-1497436072909-60f360e1d4b1.jpg);"></div>
        </div>
    </div>
</div>

<!-- JavaScript files-->
<script>
    // ------------------------------------------------------- //
    //   Inject SVG Sprite -
    //   see more here
    //   https://css-tricks.com/ajaxing-svg-sprite/
    // ------------------------------------------------------ //
    function injectSvgSprite(path) {

        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function (e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }

    // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
    // use your own URL in production, please :)
    // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
    //- injectSvgSprite('${path}icons/orion-svg-sprite.svg');
    injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');

</script>
<!-- jQuery-->
<script src="resources/vendor/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
<script src="resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<!-- Magnific Popup - Lightbox for the gallery-->
<script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Smooth scroll-->
<script src="resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<script src="resources/vendor/object-fit-images/ofi.min.js"></script>
<!-- Swiper Carousel -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
<script>var basePath = ''</script>
<!-- Main Theme JS file -->
<script src="resources/js/theme.js"></script>
<% if (request.getAttribute("error") != null) { %>
<script>
    alert("<%= request.getAttribute("error") %>");
</script>
<% } %>
</body>
</html>