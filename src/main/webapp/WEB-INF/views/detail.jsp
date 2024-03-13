<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="common/header_main.jsp"%>

    <meta charset="utf-8">
    <title>ㄱㄱ</title>

    <!-- SEO Meta Tags-->
    <meta name="description" content="Createx - Multipurpose Bootstrap Template">
    <meta name="keywords" content="bootstrap, business, creative agency, construction, services, e-commerce, mobile app showcase, multipurpose, shop, ui kit, marketing, seo, landing, html5, css3, javascript, gallery, slider, touch, creative">
    <meta name="author" content="Createx Studio">

    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="resources/assets/detailpage/img/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="resources/assets/detailpage/img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="resources/assets/detailpage/img/favicon-16x16.png">
    <link rel="manifest" href="resources/assets/detailpage/img/site.webmanifest">
    <link rel="mask-icon" color="#5bbad5" href="resources/assets/detailpage/img/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#766df4">
    <meta name="theme-color" content="#ffffff">

    <!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="resources/assets/detailpage/vendor/simplebar/dist/simplebar.min.css"/>
    <link rel="stylesheet" media="screen" href="resources/assets/detailpage/vendor/tiny-slider/dist/tiny-slider.css"/>

    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="resources/assets/detailpage/css/demo/online-courses/theme.min.css">
    <link rel="stylesheet" href="resources/assets/header/style.css">

<!-- Body-->
<body>

<script>

    function formatISODate(isoDate) {
        var date = new Date(isoDate); // ISO 8601 형식의 날짜를 Date 객체로 변환

        // Date 객체에서 원하는 형식으로 날짜와 시간을 추출
        var year = date.getFullYear();
        var month = ('0' + (date.getMonth() + 1)).slice(-2); // 월은 0부터 시작하므로 +1
        var day = ('0' + date.getDate()).slice(-2); // 일
        var hours = ('0' + date.getHours()).slice(-2); // 시간
        var minutes = ('0' + date.getMinutes()).slice(-2); // 분

        // 변환된 형식으로 날짜와 시간을 반환
        var formattedDate = year + '-' + month + '-' + day;
        var formattedTime = hours + ':' + minutes;

        return { date: formattedDate, time: formattedTime };
    }

</script>


<!-- Main content-->
<!-- Wraps everything except footer to push footer to the bottom of the page if there is little content -->
<main class="page-wrapper position-relative">
    <!-- Navbar -->
    

    <!-- Page title -->
    <section class="pt-6 pb-lg-6 pb-sm-5 pb-4 bg-faded-primary jarallax" data-jarallax data-speed="0.8">
        <div class="jarallax-img" style="background-image: url(resources/assets/detailpage/img/online-courses/events/single/shapes/01.svg);"></div>
        <div class="container pt-lg-6 pt-md-5 py-4">
            <h3 class="h6 mb-2 text-uppercase text-primary text-center">${festivalList.category}</h3>
            <h1 class="col-lg-10 mx-auto mb-0 text-center">${festivalList.name}</h1>
        </div>
    </section>


    <!-- About -->
    <section class="container pt-md-6 py-sm-5 pt-5 pb-4">
        <div class="row pb-2">
            <div class="col-md-6 mb-md-0 mb-grid-gutter">
                <h2 class="h1 pb-sm-3">축제 설명</h2>

                <!-- Accordion -->
                <div class="accordion" id="accordionEvent">

                    <!-- 축제안에서 할 수 있는 축제, 행사에 버튼누르면 상세 설명 페이지 -->
                    <!-- Item -->
                    <div class="accordion-item mb-3">
                        <h5 class="accordion-header" id="accordionEventHeading-1">
                            <button class="accordion-button pt-0 border-0" type="button" data-bs-toggle="collapse" data-bs-target="#accordionEventCollapse-1" aria-expanded="true" aria-controls="accordionEventCollapse-1">
                    <span>
                      <span class="pe-2 fw-normal text-primary">축제 1</span>
                      먹거리 축제
                    </span>
                            </button>
                        </h5>
                        <div class="accordion-collapse border-0 collapse show" id="accordionEventCollapse-1" aria-labelledby="accordionEventHeading-1" data-bs-parent="#accordionEvent">
                            <div class="accordion-body">축제 설명 ex) 광안리 드론을 이용한 별빛 축제</div>
                        </div>
                    </div>

                    <!-- Item -->
                    <div class="accordion-item mb-3">
                        <h5 class="accordion-header" id="accordionEventHeading-2">
                            <button class="accordion-button pt-0 border-0 collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#accordionEventCollapse-2" aria-expanded="false" aria-controls="accordionEventCollapse-2">
                    <span>
                      <span class="pe-2 fw-normal text-primary">축제2</span>
                      행사 종류
                    </span>
                            </button>
                        </h5>
                        <div class="accordion-collapse border-0 collapse" id="accordionEventCollapse-2" aria-labelledby="accordionEventHeading-2" data-bs-parent="#accordionEvent">
                            <div class="accordion-body">상세 부가 설명</div>
                        </div>
                    </div>

                    <!-- Item -->
                    <div class="accordion-item mb-3">
                        <h5 class="accordion-header" id="accordionEventHeading-3">
                            <button class="accordion-button pt-0 border-0 collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#accordionEventCollapse-3" aria-expanded="false" aria-controls="accordionEventCollapse-3">
                    <span>
                      <span class="pe-2 fw-normal text-primary">축제 3</span>
                      행사 종류
                    </span>
                            </button>
                        </h5>
                        <div class="accordion-collapse border-0 collapse" id="accordionEventCollapse-3" aria-labelledby="accordionEventHeading-3" data-bs-parent="#accordionEvent">
                            <div class="accordion-body">상세 부가 설명</div>
                        </div>
                    </div>

                    <!-- Item -->
                    <div class="accordion-item mb-3">
                        <h5 class="accordion-header" id="accordionEventHeading-4">
                            <button class="accordion-button pt-0 border-0 collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#accordionEventCollapse-4" aria-expanded="false" aria-controls="accordionEventCollapse-4">
                    <span>
                      <span class="pe-2 fw-normal text-primary">축제 4</span>
                      행사 종류
                    </span>
                            </button>
                        </h5>
                        <div class="accordion-collapse border-0 collapse" id="accordionEventCollapse-4" aria-labelledby="accordionEventHeading-4" data-bs-parent="#accordionEvent">
                            <div class="accordion-body">상세 부가 설명</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 축제 설명 옆 카드에 시간 가격 설명카드란 -->
            <div class="col-lg-5 offset-lg-1 col-md-6">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <div class="mb-3 pt-3 px-2">
                            <h6 class="mb-0 fs-sm text-uppercase">Time</h6>
                            <h4 class="mb-2 text-primary">${startDay} ~ ${endDay}</h4>
                            <p class="mb-0">${festivalList.startTime} ~ ${festivalList.endTime}</p>
                        </div>

                        <div class="mb-3 pt-3 px-2">
                            <h6 class="mb-0 fs-sm text-uppercase">Price</h6>
                            <h4 class="mb-2 text-primary">${festivalList.payInfo}</h4>
                            <c:if test="${!festivalList.payInfo.equals('무료')}">
                                <p class="pb-2">요금 정보 : ${festivalList.pay}</p>
                            </c:if>
                        </div>
                        <div class="mb-3 pt-3 px-2">
                            <h6 class="mb-0 fs-sm text-uppercase">precautions</h6>
                            <p class="pb-2">${festivalList.precautions}</p>
                            <a href="${festivalList.webAddress}" class="btn btn-outline-primary d-block w-100">홈페이지</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Shaped bg -->
    <div class="bg-size-contain bg-position-top bg-no-repeat" style="background-image: url(resources/assets/detailpage/img/online-courses/events/single/shapes/02.svg);">


        <!-- 가능하면 행사 관련사진? 넣으면 될듯 -->
        <!-- 행사 별로 사진데이터 & 설명 -->
        <section class="container pt-lg-6 py-sm-5 py-4">
            <div class="row py-2">
                <div class="col-sm-5 order-sm-1 order-2 mt-sm-0 mt-4 pt-sm-0 pt-3">
                    <img class="d-lg-block d-none w-50 position-absolute" style="right: 80%; bottom: 75%;" src="resources/assets/detailpage/img/online-courses/curator/shape.svg" alt="Shape">
                    <div class="px-3">
                        <!-- 이미지 경로에 사진 -->
                        <!-- 이미지 사진 조절 할 수 있도록은 했는데 약간 파일 이미지가 깨지는듯? resize할때 안깨지도록 할 수있는 방법 찾아봐야... -->
                        <img class="mt-n4" src="resources/assets/detailpage/img/online-courses/curator/03.png" alt="광안리"width="500" height="300">
                    </div>
                </div>
                <div class="col-lg-6 offset-lg-1 col-sm-7 order-sm-2 order-1">
                    <h6 class="mb-2 text-uppercase">드론쇼</h6>
                    <h2 class="h1 mb-3">요고 똑같은거 사진 넣으면서 각 행사 간단요약..?</h2>
                    <p class="pb-md-2 lead text-muted">이 행사는 이렇고 저렇고 그렇습니다</p>
                    <!-- 설명란 -->
                    <!-- <p class="pb-md-2 lead text-muted">Analyst and Marketing specialist in IT company</p>
                    <p class="pb-md-3">Mattis adipiscing aliquam eu proin metus a iaculis faucibus. Tempus curabitur venenatis, vulputate venenatis fermentum ante. Nisl, amet id semper semper quis commodo, consequat. Massa rhoncus sit morbi odio. Sit maecenas nibh consectetur vel diam.</p> -->
                    <div class="d-flex">


                    </div>
                </div>
            </div>
        </section>

        <section class="container pt-lg-6 py-sm-5 py-4">
            <div class="row py-2">
                <div class="col-sm-5 order-sm-1 order-2 mt-sm-0 mt-4 pt-sm-0 pt-3">
                    <img class="d-lg-block d-none w-50 position-absolute" style="right: 80%; bottom: 75%;" src="resources/assets/detailpage/img/online-courses/curator/shape.svg" alt="Shape">
                    <div class="px-3">
                        <!-- 이미지 경로에 사진 -->
                        <img class="mt-n4" src="resources/assets/detailpage/img/online-courses/curator/04.png" alt="해수욕장"width="500" height="300">
                    </div>
                </div>
                <div class="col-lg-6 offset-lg-1 col-sm-7 order-sm-2 order-1">
                    <h6 class="mb-2 text-uppercase">광안리 해수욕장</h6>
                    <h2 class="h1 mb-3">행사 요약</h2>
                    <p class="pb-md-2 lead text-muted">이 행사는 이렇고 저렇고 그렇습니다</p>
                    <!-- <p class="pb-md-2 lead text-muted">Analyst and Marketing specialist in IT company</p>
                    <p class="pb-md-3">Mattis adipiscing aliquam eu proin metus a iaculis faucibus. Tempus curabitur venenatis, vulputate venenatis fermentum ante. Nisl, amet id semper semper quis commodo, consequat. Massa rhoncus sit morbi odio. Sit maecenas nibh consectetur vel diam.</p> -->
                    <div class="d-flex">
                    </div>
                </div>
            </div>
        </section>



        <!-- Parallax wrapper -->
        <div class="mt-sm-5 mt-4 py-3 pt-lg-0 bg-secondary jarallax" data-jarallax data-speed="0.8">


            <!-- Parallax image -->
            <div class="jarallax-img" style="background-image: url(resources/assets/detailpage/img/online-courses/events/single/shapes/02.svg);"></div>


            <!-- Other courses -->

            <section class="container pt-lg-6 pt-5 pb-4">
                <h3 class="h6 mb-2 text-uppercase">데이터 받아서 그 해당 위치 주변? 행사추천?</h3>
                <div class="mb-lg-5 mb-4 pb-md-2 d-flex justify-content-between">
                    <h2 class="h1 mb-0">다른행사 추천</h2>
                    <div class="tns-form-checks tns-controls-inverse mb-md-n4" id="tns-events-controls" tabindex="0">
                        <button type="button" data-controls="prev" tabindex="-1">
                            <i class="ci-arrow-left"></i>
                        </button>
                        <button type="button" data-controls="next" tabindex="-1">
                            <i class="ci-arrow-right"></i>
                        </button>
                    </div>
                </div>

                <!-- Carousel component -->
                <div class="tns-carousel-wrapper">
                    <div class="tns-carousel-inner" data-carousel-options='{
              "gutter": 30,
              "nav": false,
              "controlsContainer": "#tns-events-controls",
              "responsive": {
                "0": {
                  "items": 1
                },
                "576": {
                  "items": 2
                },
                "768": {
                  "items": 3
                }
              }
            }'>
                        <div class="mb-5 pb-md-4">
                            <div class="card card-hover shadow h-100 py-3">
                                <div class="card-header pb-0 border-0">
                                    <h4 class="h3 mb-1 text-primary">05 Aug</h4>
                                    <span class="text-muted">11:00 – 14:00</span>
                                </div>
                                <div class="card-body">
                                    <h3 class="mb-2 fs-lg">
                                        <a href="event-single.html" class="nav-link">Formation of the organizational structure of the company in the face of uncertainty.</a>
                                    </h3>
                                    <span class="text-muted">Online master-class</span>
                                </div>
                                <div class="card-footer border-0">
                                    <a href="event-single.html" class="btn btn-outline-primary d-block w-100">View more</a>
                                </div>
                            </div>
                        </div>
                        <div class="mb-5 pb-md-4">
                            <div class="card card-hover shadow h-100 py-3">
                                <div class="card-header pb-0 border-0">
                                    <h4 class="h3 mb-1 text-primary">24 Jul</h4>
                                    <span class="text-muted">11:00 – 12:30</span>
                                </div>
                                <div class="card-body">
                                    <h3 class="mb-2 fs-lg">
                                        <a href="event-single.html" class="nav-link">Building a customer service department. Best Practices.</a>
                                    </h3>
                                    <span class="text-muted">Online lecture</span>
                                </div>
                                <div class="card-footer border-0">
                                    <a href="event-single.html" class="btn btn-outline-primary d-block w-100">View more</a>
                                </div>
                            </div>
                        </div>
                        <div class="mb-5 pb-md-4">
                            <div class="card card-hover shadow h-100 py-3">
                                <div class="card-header pb-0 border-0">
                                    <h4 class="h3 mb-1 text-primary">16 Jul</h4>
                                    <span class="text-muted">10:00 – 13:00</span>
                                </div>
                                <div class="card-body">
                                    <h3 class="mb-2 fs-lg">
                                        <a href="event-single.html" class="nav-link">How to apply methods of speculative design in practice. Worldbuilding prototyping.</a>
                                    </h3>
                                    <span class="text-muted">Online workshop</span>
                                </div>
                                <div class="card-footer border-0">
                                    <a href="event-single.html" class="btn btn-outline-primary d-block w-100">View more</a>
                                </div>
                            </div>
                        </div>
                        <div class="mb-5 pb-md-4">
                            <div class="card card-hover shadow h-100 py-3">
                                <div class="card-header pb-0 border-0">
                                    <h4 class="h3 mb-1 text-primary">10 Jul</h4>
                                    <span class="text-muted">9:00 – 14:00</span>
                                </div>
                                <div class="card-body">
                                    <h3 class="mb-2 fs-lg">
                                        <a href="event-single.html" class="nav-link">Find and evaluate: search and assessment tools for candidates.</a>
                                    </h3>
                                    <span class="text-muted">Online workshop</span>
                                </div>
                                <div class="card-footer border-0">
                                    <a href="event-single.html" class="btn btn-outline-primary d-block w-100">View more</a>
                                </div>
                            </div>
                        </div>
                        <div class="mb-5 pb-md-4">
                            <div class="card card-hover shadow h-100 py-3">
                                <div class="card-header pb-0 border-0">
                                    <h4 class="h3 mb-1 text-primary">27 Jun</h4>
                                    <span class="text-muted">15:00 – 19:00</span>
                                </div>
                                <div class="card-body">
                                    <h3 class="mb-2 fs-lg">
                                        <a href="event-single.html" class="nav-link">Connection to Microsoft Excel and Google Sheets, Data Visualization in Power BI</a>
                                    </h3>
                                    <span class="text-muted">Online master-class</span>
                                </div>
                                <div class="card-footer border-0">
                                    <a href="event-single.html" class="btn btn-outline-primary d-block w-100">View more</a>
                                </div>
                            </div>
                        </div>
                        <div class="mb-5 pb-md-4">
                            <div class="card card-hover shadow h-100 py-3">
                                <div class="card-header pb-0 border-0">
                                    <h4 class="h3 mb-1 text-primary">15 Jun</h4>
                                    <span class="text-muted">11:00 – 12:00</span>
                                </div>
                                <div class="card-body">
                                    <h3 class="mb-2 fs-lg">
                                        <a href="event-single.html" class="nav-link">Marketing or growth hacking: main differences and what business needs</a>
                                    </h3>
                                    <span class="text-muted">Online lecture</span>
                                </div>
                                <div class="card-footer border-0">
                                    <a href="event-single.html" class="btn btn-outline-primary d-block w-100">View more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div> <!-- / Parallax wrapper -->
</main>


<!-- Footer -->
<footer class="footer pt-sm-5 pt-4 bg-dark">
    <div class="container py-3">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6 order-lg-1 order-1 mb-lg-0 mb-4">
                <a class="d-inline-block mb-4" href="index.html">
                    <img src="resources/assets/detailpage/img/online-courses/logo-light.svg" width="130" alt="Createx logo">
                </a>
                <p class="mb-sm-4 mb-3 pb-lg-3 fs-xs text-light opacity-60">Createx Online School is a leader in online studying. We have lots of courses and programs from the main market experts. We provide relevant approaches to online learning, internships and employment in the largest companies in the country.</p>
                <a href="#" class="btn-social me-1 mb-2 mt-md-0 mt-sm-1">
                    <i class="ci-facebook"></i>
                </a>
                <a href="#" class="btn-social me-1 mb-2 mt-md-0 mt-sm-1">
                    <i class="ci-twitter"></i>
                </a>
                <a href="#" class="btn-social me-1 mb-2 mt-md-0 mt-sm-1">
                    <i class="ci-youtube"></i>
                </a>
                <a href="#" class="btn-social me-1 mb-2 mt-md-0 mt-sm-1">
                    <i class="ci-telegram"></i>
                </a>
                <a href="#" class="btn-social me-1 mb-2 mt-md-0 mt-sm-1">
                    <i class="ci-instagram"></i>
                </a>
                <a href="#" class="btn-social mb-1 mt-md-0 mt-sm-1">
                    <i class="ci-linkedin"></i>
                </a>
            </div>
            <div class="col-lg-2 col-sm-12 col-6 order-lg-2 order-sm-4 order-1 mb-lg-0 mb-4">
                <h3 class="h6 mb-2 pb-1 text-uppercase text-light">Site map</h3>
                <ul class="nav nav-light flex-lg-column flex-sm-row flex-column">
                    <li class="nav-item mb-2">
                        <a href="about.html" class="nav-link me-lg-0 me-sm-4 p-0 fw-normal">About Us</a>
                    </li>
                    <li class="nav-item mb-2">
                        <a href="courses.html" class="nav-link me-lg-0 me-sm-4 p-0 fw-normal">Courses</a>
                    </li>
                    <li class="nav-item mb-2">
                        <a href="events.html" class="nav-link me-lg-0 me-sm-4 p-0 fw-normal">Events</a>
                    </li>
                    <li class="nav-item mb-2">
                        <a href="blog.html" class="nav-link me-lg-0 me-sm-4 p-0 fw-normal">Blog</a>
                    </li>
                    <li class="nav-item mb-2">
                        <a href="contacts.html" class="nav-link me-lg-0 me-sm-4 p-0 fw-normal">Contacts</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-2 col-sm-12 col-6 order-lg-3 order-sm-5 order-2 mb-lg-0 mb-4">
                <h3 class="h6 mb-2 pb-1 text-uppercase text-light">Courses</h3>
                <ul class="nav nav-light flex-lg-column flex-sm-row flex-column">
                    <li class="nav-item mb-2">
                        <a href="courses.html" class="nav-link me-lg-0 me-sm-4 p-0 fw-normal">Marketing</a>
                    </li>
                    <li class="nav-item mb-2">
                        <a href="courses.html" class="nav-link me-lg-0 me-sm-4 p-0 fw-normal">Management</a>
                    </li>
                    <li class="nav-item mb-2">
                        <a href="courses.html" class="nav-link me-lg-0 me-sm-4 p-0 fw-normal">HR &amp; Recruting</a>
                    </li>
                    <li class="nav-item mb-2">
                        <a href="courses.html" class="nav-link me-lg-0 me-sm-4 p-0 fw-normal">Design</a>
                    </li>
                    <li class="nav-item mb-2">
                        <a href="courses.html" class="nav-link me-lg-0 me-sm-4 p-0 fw-normal">Development</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-2 col-md-4 order-lg-4 order-sm-3 order-3 mb-md-0 mb-4">
                <h3 class="h6 mb-2 pb-1 text-uppercase text-light">Contact us</h3>
                <ul class="nav nav-light flex-md-column flex-sm-row flex-column">
                    <li class="nav-item mb-2">
                        <a href="tel:(405)555-0128" class="nav-link me-md-0 me-sm-4 p-0 fw-normal text-nowrap">
                            <i class="ci-iphone me-2"></i>
                            (405) 555-0128
                        </a>
                    </li>
                    <li class="nav-item mb-2">
                        <a href="mailto:hello@example.com" class="nav-link me-md-0 me-sm-4 p-0 fw-normal text-nowrap">
                            <i class="ci-chat me-2"></i>
                            hello@example.com
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 order-lg-5 order-sm-2 order-4 mb-sm-0 mb-4">
                <h3 class="h6 mb-2 pb-1 text-uppercase text-light">Sign up to our newsletter</h3>
                <form>
                    <div class="input-group input-group-light mb-2 pb-1">
                        <input class="form-control pe-5 rounded" type="text" placeholder="Email address*">
                        <i class="ci-arrow-right lead text-light position-absolute top-50 end-0 translate-middle-y mt-n1 me-3"></i>
                    </div>
                    <small class="d-block form-text fs-xxs line-height-base text-light">*Subscribe to our newsletter to receive early discount offers, updates and new products info.</small>
                </form>
            </div>
        </div>
    </div>
    <div style="background-color: #292C37;">
        <div class="container py-2">
            <div class="d-flex align-items-sm-center justify-content-between py-1">
                <div class="fs-xs text-light">
              <span class="d-sm-inline d-block mb-1">
                <span class="fs-sm">&copy; </span>
                All rights reserved.
              </span>
                    Made with
                    <i class="ci-heart mt-n1 mx-1 fs-base text-primary align-middle"></i>
                    <a href="https://createx.studio/" class="text-light" target="_blank" rel="noopener noreferrer">by Createx Studio</a>
                </div>
                <div class="d-flex align-items-sm-center">
                    <span class="d-sm-inline-block d-none text-light fs-sm me-3 mb-1 align-vertical">Back to top</span>
                    <a class="btn-scroll-top position-static rounded" href="#top" data-scroll>
                        <i class="btn-scroll-top-icon ci-angle-up"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- Vendor scripts: js libraries and plugins-->
<script src="resources/assets/detailpage/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="resources/assets/detailpage/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<script src="resources/assets/detailpage/vendor/jarallax/dist/jarallax.min.js"></script>
<script src="resources/assets/detailpage/vendor/simplebar/dist/simplebar.min.js"></script>
<script src="resources/assets/detailpage/vendor/tiny-slider/dist/min/tiny-slider.js"></script>

<!-- Main theme script-->
<script src="resources/assets/detailpage/js/theme.min.js"></script>
</body>
</html>