<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- Footer-->
<footer class="position-relative z-index-10 d-print-none">
    <!-- Main block - menus, subscribe form-->
    <div class="py-6 bg-gray-200 text-muted">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="fw-bold text-uppercase text-dark mb-3">Introduce</div>
                    <p>지역 별 행사 내용을 빠르고 간편하게 보여드립니다!</p>
                    <!-- <ul class="list-inline">
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
                    </ul> -->
                </div>
                <div class="col-lg-3 mb-5 mb-lg-0">
                    <h6 class="text-uppercase text-dark mb-3">Project</h6>
                    <ul class="list-unstyled">
                        <p>프로젝트 페이지</p>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="https://mysterious-airedale-6dc.notion.site/7bb6f102a6ba40f0bb9c7b3a0bbe4431?pvs=4" target="_blank" title="notion"><i class="fas fa-pager"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="https://github.com/RuiFoot/GoGo" target="_blank" title="github"><i class="fab fa-github"></i></a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                    <h6 class="text-uppercase text-dark mb-3">Team Members</h6>
                    <ul class="list-unstyled">
                        <li>백진욱 &nbsp<a class="text-muted text-primary-hover" href="https://www.instagram.com/realuk_0_/" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a>
                            <a class="text-muted text-primary-hover" href="https://github.com/RuiFoot" target="_blank" title="github"><i class="fab fa-github"></i></a></li>
                        <li>차세종 &nbsp<a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                        <li>김수현 &nbsp<a class="text-muted text-primary-hover" href="https://www.instagram.com/su._.hyeon97/" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                        <li>정승호 &nbsp<a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                        <li>오재창 &nbsp<a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                    <h6 class="text-uppercase text-dark mb-3">Pages</h6>
                    <ul class="list-unstyled">
                        <li><a class="text-muted" href="/">Home                                   </a></li>
                        <!--<li><a class="text-muted" href="team.html">Team                                   </a></li>
                        <li><a class="text-muted" href="contact.html">Contact                                   </a></li> -->
                    </ul>
                </div>
                <!--<div class="col-lg-4">
                    <h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>
                    <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
                    <form action="#" id="newsletter-form">
                        <div class="input-group mb-3">
                            <input class="form-control bg-transparent border-dark border-end-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
                            <button class="btn btn-outline-dark border-start-0" type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
                        </div>
                    </form>
                </div>-->
            </div>
        </div>
    </div>
    <!-- Copyright section of the footer-->
    <div class="py-4 fw-light bg-gray-800 text-gray-300">
    </div>
</footer>


<!-- 카카오맵 js-->
<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>



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
<!-- Swiper Carousel                       -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
<script>var basePath = ''</script>
<!-- Main Theme JS file    -->
<script src="resources/js/theme.js"></script>
