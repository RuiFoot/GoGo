<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="common/header_main.jsp"%>



<link rel="apple-touch-icon" sizes="180x180" href="resources/assets/mypage/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="resources/assets/mypage/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="resources/assets/mypage/favicon/favicon-16x16.png">
<link rel="manifest" href="resources/assets/mypage/favicon/site.webmanifest">
<link rel="mask-icon" color="#6366f1" href="resources/assets/mypage/favicon/safari-pinned-tab.svg">
<meta name="msapplication-TileColor" content="#080032">
<meta name="msapplication-config" content="resources/assets/mypage/favicon/browserconfig.xml">
<meta name="theme-color" content="white">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet" id="google-font">
<link rel="stylesheet" media="screen" href="resources/assets/mypage/css/theme.min.css">
<link rel="stylesheet" href="resources/assets/header/style.css">

<!-- Body-->
<body class="bg-secondary">
<!-- Page wrapper-->
<main class="page-wrapper">
    <!-- Navbar. Remove 'fixed-top' class to make the navigation bar scrollable with the page-->
    <!-- Page content-->
    <div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5">
        <div class="row pt-sm-2 pt-lg-0">
            <!-- Sidebar (offcanvas on sreens < 992px)-->
            <aside class="col-lg-3 pe-lg-4 pe-xl-5 mt-n3">
                <div class="position-lg-sticky top-0">
                    <div class="d-none d-lg-block" style="padding-top: 105px;"></div>
                    <div class="offcanvas-lg offcanvas-start" id="sidebarAccount">
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3 d-lg-none" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarAccount"></button>
                        <div class="offcanvas-body">
                            <div class="pb-2 pb-lg-0 mb-4 mb-lg-5"><img class="d-block rounded-circle mb-2" src="resources/assets/mypage/img/avatar/02.jpg" width="80" alt="Isabella Bocouse">
                                <h3 class="h5 mb-1">이름</h3>
                                <p class="fs-sm text-muted mb-0">@naver.com</p>
                            </div>
                            <nav class="nav flex-column pb-2 pb-lg-4 mb-3">
                                <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">Menu</h4><a class="nav-link fw-semibold py-2 px-0 active" href="account-overview.html"></i>마이페이지</a><a class="nav-link fw-semibold py-2 px-0" href="account-settings.html"></i>검색 페이지</a><a class="nav-link fw-semibold py-2 px-0" href="account-billing.html"><i class></i>회원가입</a><a class="nav-link fw-semibold py-2 px-0" href="account-billing.html"></i>상세 페이지</a>
                            </nav>
                            <nav class="nav flex-column pb-2 pb-lg-4 mb-1">

                            </nav>

                        </div>
                    </div>
                </div>
            </aside>
            <!-- Page content-->
            <div class="col-lg-9 pt-4 pb-2 pb-sm-4">
                <h1 class="h2 mb-4">마이페이지</h1>
                <!-- Basic info-->
                <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i class="ai-user text-primary lead pe-1 me-2"></i>
                            <h2 class="h4 mb-0">내 정보</h2><a class="btn btn-sm btn-secondary ms-auto" href="account-settings.html"><i class="ai-edit ms-n1 me-2"></i>수정하기</a>
                        </div>
                        <div class="d-md-flex align-items-center">
                            <div class="d-sm-flex align-items-center">
                                <div class="rounded-circle bg-size-cover bg-position-center flex-shrink-0" style="width: 80px; height: 80px; background-image: url(resources/assets/mypage/img/avatar/02.jpg);"></div>
                                <div class="pt-3 pt-sm-0 ps-sm-3">
                                    <h3 class="h5 mb-2">에밀리<i class="ai-circle-check-filled fs-base text-success ms-2"></i></h3>
                                    <div class="text-muted fw-medium d-flex flex-wrap flex-sm-nowrap align-iteems-center">

                                        <form class="inputImg" method="post" enctype="multipart/form-data"> <!-- 이미지 파일 데이터에 알맞는 enctype 설정 -->
                                            <div class="addImage" id="image-show"> <!-- 이미지 띄울 공간 -->
                                            </div>
                                            <input type="file" accept="image/*" onchange="loadFile(this)">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="w-100 pt-3 pt-md-0 ms-md-auto" style="max-width: 212px;">
                            </div>
                        </div>
                    </div>
                    <div class="row py-4 mb-2 mb-sm-3">
                        <div class="col-md-6 mb-4 mb-md-0">
                            <table class="table mb-0">
                                <tr>
                                    <td class="border-0 text-muted py-1 px-0">핸드폰 번호</td>
                                    <td class="border-0 text-dark fw-medium py-1 ps-3">01095668061</td>
                                </tr>
                                <tr>
                                    <td class="border-0 text-muted py-1 px-0">언어</td>
                                    <td class="border-0 text-dark fw-medium py-1 ps-3">English</td>
                                </tr>
                                <tr>
                                    <td class="border-0 text-muted py-1 px-0">이메일 주소</td>
                                    <td class="border-0 text-dark fw-medium py-1 ps-3">domble1234@naver.com</td>
                                </tr>
                                <tr>
                                    <td class="border-0 text-muted py-1 px-0">생년월일</td>
                                    <td class="border-0 text-dark fw-medium py-1 ps-3">00.02.18</td>
                                </tr>
                            </table>
                        </div>

                    </div>
            </div>
        </div>
        <div class="alert alert-info d-flex mb-0" role="alert"><i class="ai-circle-info fs-xl"></i>
            <div class="ps-2">여행을 떠나요!<a class="alert-link ms-1" href="account-settings.html">Let's go on a trip!</a></div>
        </div>
    </div>
    </section>
    <div class="row row-cols-1 row-cols-md-2 g-4 mb-4">
        <!-- Address-->
        <section class="col">
            <div class="card h-100 border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
                <div class="card-body">
                    <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-1 mb-lg-2"><i class="ai-map-pin text-primary lead pe-1 me-2"></i>
                        <h2 class="h4 mb-0">Best👍방문 기록</h2><a class="btn btn-sm btn-secondary ms-auto" href="account-settings.html"><i class="ai-edit ms-n1 me-2"></i>수정하기</a>
                    </div>
                    <div class="d-flex align-items-center pb-1 mb-2">
                        <h3 class="h6 mb-0 me-3"> 방문한 축제</h3><span class="badge bg-faded-primary text-primary">Best👍</span>
                    </div>
                    <p class="mb-0">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9<br>Canada</p>
                    <div class="d-flex align-items-center pt-4 pb-1 my-2">
                        <h3 class="h6 mb-0 me-3">좋았던 이유</h3><span class="badge bg-faded-primary text-primary">Best👍</span>
                    </div>
                    <p class="mb-0">314 Robinson Lane,<br>Wilmington, DE 19805,<br>USA</p>
                </div>
            </div>
        </section>
        <!-- Billing-->
        <section class="col">
            <div class="card h-100 border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
                <div class="card-body">
                    <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-1 mb-lg-2"><i class="ai-wallet text-primary lead pe-1 me-2"></i>
                        <h2 class="h4 mb-0">내 주소</h2><a class="btn btn-sm btn-secondary ms-auto" href="account-billing.html"><i class="ai-edit ms-n1 me-2"></i>수정하기</a>
                    </div>
                    <div class="d-flex align-items-center pb-1 mb-2">
                        <p class="mb-0">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9<br>Canada</p>
                    </div>
                </div>
                <div class="alert alert-danger d-flex mb-0"><i class="ai-octagon-alert fs-xl me-2"></i>
                    <p class="mb-0">당신의 정보는 소중합니다</p>
                </div>
            </div>
    </div>
    </section>
    </div>
    <!-- Orders-->
    <section class="card border-0 py-4 px-3 px-md-5">
        <h2 class="h4 mb-4">내가 작성한 댓글</h2>

        <!-- 댓글 목록 -->
        <div class="accordion" id="commentAccordion">

            <!-- 게시물 제목 예시 1 -->
            <div class="accordion-item">
                <h3 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <span class="badge bg-primary me-2">#1</span>
                                <span class="fw-bold">게시물 제목 예시 1</span>
                            </div>
                            <button class="btn btn-sm btn-secondary me-2" type="button">게시물 방문하기</button>
                        </div>
                    </button>
                </h3>
                <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#commentAccordion">
                    <div class="accordion-body">
                        <p>예시 댓글 내용 1</p>
                        <!-- 댓글 내용 및 추가 정보 -->
                    </div>
                </div>
            </div>
            <!-- 게시물 제목 예시 1 끝 -->

            <div class="accordion" id="commentAccordion">
                <!-- 게시물 제목 예시 2 -->
                <div class="accordion-item">
                    <h3 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <span class="badge bg-primary me-2">#2</span>
                                    <span class="fw-bold">게시물 제목 예시 2</span>
                                </div>
                                <button class="btn btn-sm btn-secondary me-2" type="button">게시물 방문하기</button>
                            </div>
                        </button>
                    </h3>
                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#commentAccordion">
                        <div class="accordion-body">
                            <p>예시 댓글 내용 2</p>
                            <!-- 댓글 내용 및 추가 정보 -->
                        </div>
                    </div>
                </div>
                <!-- 게시물 제목 예시 2 끝 -->

                <!-- 추가 게시물 예시 -->
                <div class="accordion" id="commentAccordion">
                    <!-- 게시물 제목 예시 3 -->
                    <div class="accordion-item">
                        <h3 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <span class="badge bg-primary me-2">#3</span>
                                        <span class="fw-bold">게시물 제목 예시 3</span>
                                    </div>
                                    <button class="btn btn-sm btn-secondary me-2" type="button">게시물 방문하기</button>
                                </div>
                            </button>
                        </h3>
                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#commentAccordion">
                            <div class="accordion-body">
                                <p>예시 댓글 내용 3</p>
                                <!-- 댓글 내용 및 추가 정보 -->
                            </div>
                        </div>
                    </div>
                    <!-- 게시물 제목 예시 3 끝 -->

                </div>
    </section>

    <!-- Divider for dark mode only-->
    <hr class="d-none d-dark-mode-block">
    <!-- Sidebar toggle button-->
    <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" data-bs-target="#sidebarAccount"><i class="ai-menu me-2"></i>Account menu</button>
</main>
<!-- Footer-->
<footer class="footer bg-dark position-relative pb-4 pt-md-3 py-lg-4 py-xl-5">
    <div class="d-none d-dark-mode-block position-absolute top-0 start-0 w-100 h-100" style="background-color: rgba(255,255,255, .02);"></div>
    <div class="dark-mode container position-relative zindex-2 pt-5 pb-2">
        <!-- Columns with links-->
        <div class="row" id="links">
            <div class="col-md-3 col-xl-2 pb-2 pb-md-0">
                <h3 class="h6 text-uppercase d-none d-md-block">기역기역 주식회사</h3><a class="btn-more h6 mb-1 text-uppercase text-decoration-none d-flex align-items-center collapsed d-md-none" href="#useful" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="useful" data-show-label="Useful links" data-hide-label="Useful links"></a>
                <div class="collapse d-md-block" id="useful" data-bs-parent="#links">
                    <ul >
                        <li >대표이사: 김사무엘</li>
                        <li >주소:서울특별시 </li>
                        <li >등록번호:529856545</li>


                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-xl-2 pb-2 pb-md-0">
                <h3 class="h6 text-uppercase d-none d-md-block">고객센터</h3><a class="btn-more h6 mb-1 text-uppercase text-decoration-none d-flex align-items-center collapsed d-md-none" href="#decors" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="decors" data-show-label="Decors" data-hide-label="Decors"></a>
                <div class="collapse d-md-block" id="decors" data-bs-parent="#links">
                    <ul >
                        <li >전화번호:1234-5698</li>
                        <li >mail:han33434@giohkgiohk.net</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-xl-2 pb-2 pb-md-0">
                <h3 class="h6 text-uppercase d-none d-md-block">Categories</h3><a class="btn-more h6 mb-1 text-uppercase text-decoration-none d-flex align-items-center collapsed d-md-none" href="#categories" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="categories" data-show-label="Categories" data-hide-label="Categories"></a>
                <div class="collapse d-md-block" id="categories" data-bs-parent="#links">
                    <ul class="nav flex-column pb-2 pb-md-0">
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Kitchen</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Bathroom</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Living room</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Bedroom</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 pb-2 pb-md-0">
                <h3 class="h6 text-uppercase d-none d-md-block">Showroom</h3><a class="btn-more h6 mb-1 text-uppercase text-decoration-none d-flex align-items-center collapsed d-md-none" href="#showroom" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="showroom" data-show-label="Showroom" data-hide-label="Showroom"></a>
                <div class="collapse d-md-block" id="showroom" data-bs-parent="#links">
                    <ul class="nav flex-column pb-3">
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">1501 Main St, Ste 50<br>Tewksbury MA 01876</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="mailto:email@example.com">email@example.com</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="+15262200459">+1 526 220 0459</a></li>
                    </ul>
                    <ul class="list-unstyled mb-0 pb-3 pb-md-0">
                        <li class="text-nav mb-2">Mon-Fri: 8:00 - 21:00</li>
                        <li class="text-nav mb-2">Sat: 8:00 - 21:00</li>
                        <li class="text-nav">Sun: 8:00 - 21:00</li>
                    </ul>
                </div>
            </div>
            <div class="col-12 col-xl-3 mt-md-2 mt-xl-0 pt-2 pt-md-4 pt-xl-0">
                <h3 class="h6 text-uppercase mb-1 pb-1">Download our app</h3>
                <div class="d-flex d-xl-block d-xxl-flex"><a class="btn btn-secondary px-3 py-2 mt-3 me-3" href="#"><img class="mx-1" src="resources/assets/mypage/img/market/appstore-light.svg" width="120" alt="App Store"></a><a class="btn btn-secondary px-3 py-2 mt-3" href="#"><img class="mx-1" src="assets/mypage/img/market/googleplay-light.svg" width="119" alt="Google Play"></a></div>
            </div>
        </div>
        <!-- Nav + Switcher-->
        <div class="d-sm-flex align-items-end justify-content-between border-bottom mt-2 mt-sm-1 pt-4 pt-sm-5">
            <!-- Nav-->
            <nav class="d-flex mb-3 mb-sm-4"><a class="nav-link text-muted fs-sm fw-normal ps-0 pe-2 py-2 me-4" href="#">Support</a><a class="nav-link text-muted fs-sm fw-normal ps-0 pe-2 py-2 me-4" href="#">Privacy</a><a class="nav-link text-muted fs-sm fw-normal ps-0 pe-2 py-2 me-sm-4" href="#">Terms of use</a></nav>
            <!-- Language / currency switcher-->
            <div class="dropdown mb-4">
                <button class="btn btn-outline-secondary dropdown-toggle px-4" type="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false"><img class="me-2" src="resources/assets/mypage/img/flags/en.png" width="18" alt="English / USD">Eng / USD</button>
                <div class="dropdown-menu dropdown-menu-end my-1">
                    <div class="dropdown-item">
                        <select class="form-select form-select-sm">
                            <option value="usd">$ USD</option>
                            <option value="eur">€ EUR</option>
                            <option value="ukp">£ UKP</option>
                            <option value="jpy">¥ JPY</option>
                        </select>
                    </div><a class="dropdown-item pb-1" href="#"><img class="me-2" src="resources/assets/mypage/img/flags/fr.png" width="18" alt="Français">Français</a><a class="dropdown-item pb-1" href="#"><img class="me-2" src="resources/assets/mypage/img/flags/de.png" width="18" alt="Deutsch">Deutsch</a><a class="dropdown-item" href="#"><img class="me-2" src="resources/assets/mypage/img/flags/it.png" width="18" alt="Italiano">Italiano</a>
                </div>
            </div>
        </div>
        <!-- Logo + Socials + Cards-->
        <div class="d-sm-flex align-items-center pt-4">
            <div class="d-sm-flex align-items-center pe-sm-2"><a class="navbar-brand d-inline-flex align-items-center me-sm-5 mb-4 mb-sm-0" href="index.html"><span class="text-primary flex-shrink-0 me-2">
                <svg version="1.1" width="35" height="32" viewBox="0 0 36 33" xmlns="http://www.w3.org/2000/svg">
                  <path fill="currentColor" d="M35.6,29c-1.1,3.4-5.4,4.4-7.9,1.9c-2.3-2.2-6.1-3.7-9.4-3.7c-3.1,0-7.5,1.8-10,4.1c-2.2,2-5.8,1.5-7.3-1.1c-1-1.8-1.2-4.1,0-6.2l0.6-1.1l0,0c0.6-0.7,4.4-5.2,12.5-5.7c0.5,1.8,2,3.1,3.9,3.1c2.2,0,4.1-1.9,4.1-4.2s-1.8-4.2-4.1-4.2c-2,0-3.6,1.4-4,3.3H7.7c-0.8,0-1.3-0.9-0.9-1.6l5.6-9.8c2.5-4.5,8.8-4.5,11.3,0L35.1,24C36,25.7,36.1,27.5,35.6,29z"></path>
                </svg></span><span class="text-nav">Around</span></a>
                <div class="text-nowrap mb-4 mb-sm-0"><a class="btn btn-icon btn-sm btn-secondary btn-telegram rounded-circle mx-2 ms-sm-0 me-sm-3" href="#"><i class="ai-telegram"></i></a><a class="btn btn-icon btn-sm btn-secondary btn-instagram rounded-circle mx-2 ms-sm-0 me-sm-3" href="#"><i class="ai-instagram"></i></a><a class="btn btn-icon btn-sm btn-secondary btn-facebook rounded-circle mx-2 ms-sm-0 me-sm-3" href="#"><i class="ai-facebook"></i></a><a class="btn btn-icon btn-sm btn-secondary btn-pinterest rounded-circle mx-2 ms-sm-0 me-sm-3" href="#"><i class="ai-pinterest"></i></a></div>
            </div><img class="ms-sm-auto" src="resources/assets/mypage/img/shop/footer-cards.png" width="187" alt="Accepted cards">
        </div>
    </div>
    <div class="pt-5 pt-lg-0"></div>
</footer>
<!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll>
    <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
    </svg><i class="ai-arrow-up"></i></a>
<!-- Vendor scripts: js libraries and plugins-->
<script src="resources/assets/mypage/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="resources/assets/mypage/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<!-- Main theme script-->
<script src="resources/assets/mypage/js/theme.min.js"></script>
</body>
</html>