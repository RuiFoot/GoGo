<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="common/header_main.jsp"%>



<% if (request.getRequestURI().endsWith("mypage.jsp")) {%>
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
<% } %>
<!-- Body-->
<body class="bg-secondary">
<!-- Page wrapper-->
<main class="page-wrapper">
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
                                <h3 class="h5 mb-1">Isabella Bocouse</h3>
                                <p class="fs-sm text-muted mb-0">bocouse@example.com</p>
                            </div>
                            <nav class="nav flex-column pb-2 pb-lg-4 mb-3">
                                <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">Account</h4><a class="nav-link fw-semibold py-2 px-0 active" href="account-overview.html"><i class="ai-user-check fs-5 opacity-60 me-2"></i>Overview</a><a class="nav-link fw-semibold py-2 px-0" href="account-settings.html"><i class="ai-settings fs-5 opacity-60 me-2"></i>Settings</a><a class="nav-link fw-semibold py-2 px-0" href="account-billing.html"><i class="ai-wallet fs-5 opacity-60 me-2"></i>Billing</a>
                            </nav>
                            <nav class="nav flex-column pb-2 pb-lg-4 mb-1">
                                <h4 class="fs-xs fw-medium text-muted text-uppercase pb-1 mb-2">Dashboard</h4><a class="nav-link fw-semibold py-2 px-0" href="account-orders.html"><i class="ai-cart fs-5 opacity-60 me-2"></i>Orders</a><a class="nav-link fw-semibold py-2 px-0" href="account-earnings.html"><i class="ai-activity fs-5 opacity-60 me-2"></i>Earnings</a><a class="nav-link fw-semibold py-2 px-0" href="account-chat.html"><i class="ai-messages fs-5 opacity-60 me-2"></i>Chat<span class="badge bg-danger ms-auto">4</span></a><a class="nav-link fw-semibold py-2 px-0" href="account-favorites.html"><i class="ai-heart fs-5 opacity-60 me-2"></i>Favorites</a>
                            </nav>
                            <nav class="nav flex-column"><a class="nav-link fw-semibold py-2 px-0" href="account-signin.html"><i class="ai-logout fs-5 opacity-60 me-2"></i>Sign out</a></nav>
                        </div>
                    </div>
                </div>
            </aside>
            <!-- Page content-->
            <div class="col-lg-9 pt-4 pb-2 pb-sm-4">
                <h1 class="h2 mb-4">Overview</h1>
                <!-- Basic info-->
                <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i class="ai-user text-primary lead pe-1 me-2"></i>
                            <h2 class="h4 mb-0">Basic info</h2><a class="btn btn-sm btn-secondary ms-auto" href="account-settings.html"><i class="ai-edit ms-n1 me-2"></i>Edit info</a>
                        </div>
                        <div class="d-md-flex align-items-center">
                            <div class="d-sm-flex align-items-center">
                                <div class="rounded-circle bg-size-cover bg-position-center flex-shrink-0" style="width: 80px; height: 80px; background-image: url(resources/assets/mypage/img/avatar/02.jpg);"></div>
                                <div class="pt-3 pt-sm-0 ps-sm-3">
                                    <h3 class="h5 mb-2">Isabella Bocouse<i class="ai-circle-check-filled fs-base text-success ms-2"></i></h3>
                                    <div class="text-muted fw-medium d-flex flex-wrap flex-sm-nowrap align-iteems-center">
                                        <div class="d-flex align-items-center me-3"><i class="ai-mail me-1"></i>email@example.com</div>
                                        <div class="d-flex align-items-center text-nowrap"><i class="ai-map-pin me-1"></i>USA, $</div>
                                    </div>
                                </div>
                            </div>
                            <div class="w-100 pt-3 pt-md-0 ms-md-auto" style="max-width: 212px;">
                                <div class="d-flex justify-content-between fs-sm pb-1 mb-2">Profile completion<strong class="ms-2">62%</strong></div>
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 62%" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row py-4 mb-2 mb-sm-3">
                            <div class="col-md-6 mb-4 mb-md-0">
                                <table class="table mb-0">
                                    <tr>
                                        <td class="border-0 text-muted py-1 px-0">Phone</td>
                                        <td class="border-0 text-dark fw-medium py-1 ps-3">+1 234 567 890</td>
                                    </tr>
                                    <tr>
                                        <td class="border-0 text-muted py-1 px-0">Language</td>
                                        <td class="border-0 text-dark fw-medium py-1 ps-3">English</td>
                                    </tr>
                                    <tr>
                                        <td class="border-0 text-muted py-1 px-0">Gender</td>
                                        <td class="border-0 text-dark fw-medium py-1 ps-3">Female</td>
                                    </tr>
                                    <tr>
                                        <td class="border-0 text-muted py-1 px-0">Communication</td>
                                        <td class="border-0 text-dark fw-medium py-1 ps-3">Mobile, email</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-6 d-md-flex justify-content-end">
                                <div class="w-100 border rounded-3 p-4" style="max-width: 212px;"><img class="d-block mb-2" src="resources/assets/mypage/img/account/gift-icon.svg" width="24" alt="Gift icon">
                                    <h4 class="h5 lh-base mb-0">123 bonuses</h4>
                                    <p class="fs-sm text-muted mb-0">1 bonus $1</p>
                                </div>
                            </div>
                        </div>
                        <div class="alert alert-info d-flex mb-0" role="alert"><i class="ai-circle-info fs-xl"></i>
                            <div class="ps-2">Fill in the information 100% to receive more suitable offers.<a class="alert-link ms-1" href="account-settings.html">Go to settings!</a></div>
                        </div>
                    </div>
                </section>
                <div class="row row-cols-1 row-cols-md-2 g-4 mb-4">
                    <!-- Address-->
                    <section class="col">
                        <div class="card h-100 border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
                            <div class="card-body">
                                <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-1 mb-lg-2"><i class="ai-map-pin text-primary lead pe-1 me-2"></i>
                                    <h2 class="h4 mb-0">Address</h2><a class="btn btn-sm btn-secondary ms-auto" href="account-settings.html"><i class="ai-edit ms-n1 me-2"></i>Edit info</a>
                                </div>
                                <div class="d-flex align-items-center pb-1 mb-2">
                                    <h3 class="h6 mb-0 me-3">Shipping address</h3><span class="badge bg-faded-primary text-primary">Primary</span>
                                </div>
                                <p class="mb-0">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9<br>Canada</p>
                                <div class="d-flex align-items-center pt-4 pb-1 my-2">
                                    <h3 class="h6 mb-0 me-3">Billing address 1</h3><span class="badge bg-faded-primary text-primary">Primary</span>
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
                                    <h2 class="h4 mb-0">Billing</h2><a class="btn btn-sm btn-secondary ms-auto" href="account-billing.html"><i class="ai-edit ms-n1 me-2"></i>Edit info</a>
                                </div>
                                <div class="d-flex align-items-center pb-1 mb-2">
                                    <h3 class="h6 mb-0 me-3">Isabella Bocouse</h3><span class="badge bg-faded-primary text-primary">Primary</span>
                                </div>
                                <div class="d-flex align-items-center pb-4 mb-2 mb-sm-3"><svg width='52' height='42' viewBox='0 0 52 42' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M22.6402 28.2865H18.5199L21.095 12.7244H25.2157L22.6402 28.2865ZM15.0536 12.7244L11.1255 23.4281L10.6607 21.1232L10.6611 21.124L9.27467 14.1256C9.27467 14.1256 9.10703 12.7244 7.32014 12.7244H0.8262L0.75 12.9879C0.75 12.9879 2.73586 13.3942 5.05996 14.7666L8.63967 28.2869H12.9327L19.488 12.7244H15.0536ZM47.4619 28.2865H51.2453L47.9466 12.7239H44.6345C43.105 12.7239 42.7324 13.8837 42.7324 13.8837L36.5873 28.2865H40.8825L41.7414 25.9749H46.9793L47.4619 28.2865ZM42.928 22.7817L45.093 16.9579L46.3109 22.7817H42.928ZM36.9095 16.4667L37.4975 13.1248C37.4975 13.1248 35.6831 12.4463 33.7916 12.4463C31.7469 12.4463 26.8913 13.3251 26.8913 17.5982C26.8913 21.6186 32.5902 21.6685 32.5902 23.7803C32.5902 25.8921 27.4785 25.5137 25.7915 24.182L25.1789 27.6763C25.1789 27.6763 27.0187 28.555 29.8296 28.555C32.6414 28.555 36.8832 27.1234 36.8832 23.2271C36.8832 19.1808 31.1331 18.8041 31.1331 17.0449C31.1335 15.2853 35.1463 15.5113 36.9095 16.4667Z' fill='#2566AF'/><path d='M10.6611 22.1235L9.2747 15.1251C9.2747 15.1251 9.10705 13.7239 7.32016 13.7239H0.8262L0.75 13.9874C0.75 13.9874 3.87125 14.6235 6.86507 17.0066C9.72766 19.2845 10.6611 22.1235 10.6611 22.1235Z' fill='#E6A540'/></svg>
                                    <div class="ps-3 fs-sm">
                                        <div class="text-dark">Visa •••• 9016</div>
                                        <div class="text-muted">Debit - Expires 03/24</div>
                                    </div>
                                </div>
                                <div class="alert alert-danger d-flex mb-0"><i class="ai-octagon-alert fs-xl me-2"></i>
                                    <p class="mb-0">Your primary credit card expired on 01/04/2022. Please add a new card or update this one.</p>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <!-- Orders-->
                <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3"><i class="ai-cart text-primary lead pe-1 me-2"></i>
                            <h2 class="h4 mb-0">Orders</h2><a class="btn btn-sm btn-secondary ms-auto" href="account-orders.html">View all</a>
                        </div>
                        <!-- Orders accordion-->
                        <div class="accordion accordion-alt accordion-orders" id="orders">
                            <!-- Order-->
                            <div class="accordion-item border-top mb-0">
                                <div class="accordion-header"><a class="accordion-button d-flex fs-4 fw-normal text-decoration-none py-3 collapsed" href="#orderOne" data-bs-toggle="collapse" aria-expanded="false" aria-controls="orderOne">
                                    <div class="d-flex justify-content-between w-100" style="max-width: 440px;">
                                        <div class="me-3 me-sm-4">
                                            <div class="fs-sm text-muted">#78A6431D409</div><span class="badge bg-faded-info text-info fs-xs">In progress</span>
                                        </div>
                                        <div class="me-3 me-sm-4">
                                            <div class="d-none d-sm-block fs-sm text-muted mb-2">Order date</div>
                                            <div class="d-sm-none fs-sm text-muted mb-2">Date</div>
                                            <div class="fs-sm fw-medium text-dark">Jan 27, 2022</div>
                                        </div>
                                        <div class="me-3 me-sm-4">
                                            <div class="fs-sm text-muted mb-2">Total</div>
                                            <div class="fs-sm fw-medium text-dark">$16.00</div>
                                        </div>
                                    </div>
                                    <div class="accordion-button-img d-none d-sm-flex ms-auto">
                                        <div class="mx-1"><img src="resources/assets/mypage/mypage/img/account/orders/01.png" width="48" alt="Product"></div>
                                    </div></a></div>
                                <div class="accordion-collapse collapse" id="orderOne" data-bs-parent="#orders">
                                    <div class="accordion-body">
                                        <div class="table-responsive pt-1">
                                            <table class="table align-middle w-100" style="min-width: 450px;">
                                                <tr>
                                                    <td class="border-0 py-1 px-0">
                                                        <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="resources/assets/mypage/img/shop/cart/01.png" width="110" alt="Product"></a>
                                                            <div class="ps-3 ps-sm-4">
                                                                <h4 class="h6 mb-2"><a href="shop-single.html">Candle in concrete bowl</a></h4>
                                                                <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>Gray night</span></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Quantity</div>
                                                        <div class="fs-sm fw-medium text-dark">1</div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Price</div>
                                                        <div class="fs-sm fw-medium text-dark">$16</div>
                                                    </td>
                                                    <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Total</div>
                                                        <div class="fs-sm fw-medium text-dark">$16</div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="bg-secondary rounded-1 p-4 my-2">
                                            <div class="row">
                                                <div class="col-sm-5 col-md-3 col-lg-4 mb-3 mb-md-0">
                                                    <div class="fs-sm fw-medium text-dark mb-1">Payment:</div>
                                                    <div class="fs-sm">Upon the delivery</div><a class="btn btn-link py-1 px-0 mt-2" href="#"><i class="ai-time me-2 ms-n1"></i>Order history</a>
                                                </div>
                                                <div class="col-sm-7 col-md-5 mb-4 mb-md-0">
                                                    <div class="fs-sm fw-medium text-dark mb-1">Delivery address:</div>
                                                    <div class="fs-sm">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9, Canada</div>
                                                </div>
                                                <div class="col-md-4 col-lg-3 text-md-end">
                                                    <button class="btn btn-sm btn-outline-primary w-100 w-md-auto" type="button"><i class="ai-star me-2 ms-n1"></i>Leave a review</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Order-->
                            <div class="accordion-item border-top mb-0">
                                <div class="accordion-header"><a class="accordion-button d-flex fs-4 fw-normal text-decoration-none py-3 collapsed" href="#orderTwo" data-bs-toggle="collapse" aria-expanded="false" aria-controls="orderTwo">
                                    <div class="d-flex justify-content-between w-100" style="max-width: 440px;">
                                        <div class="me-3 me-sm-4">
                                            <div class="fs-sm text-muted">#47H76G09F33</div><span class="badge bg-faded-danger text-danger fs-xs">Canceled</span>
                                        </div>
                                        <div class="me-3 me-sm-4">
                                            <div class="d-none d-sm-block fs-sm text-muted mb-2">Order date</div>
                                            <div class="d-sm-none fs-sm text-muted mb-2">Date</div>
                                            <div class="fs-sm fw-medium text-dark">Sep 14, 2022</div>
                                        </div>
                                        <div class="me-3 me-sm-4">
                                            <div class="fs-sm text-muted mb-2">Total</div>
                                            <div class="fs-sm fw-medium text-dark">$59.00</div>
                                        </div>
                                    </div>
                                    <div class="accordion-button-img d-none d-sm-flex ms-auto">
                                        <div class="mx-1"><img src="resources/assets/mypage/img/account/orders/02.png" width="48" alt="Product"></div>
                                        <div class="mx-1"><img src="resources/assets/mypage/img/account/orders/03.png" width="48" alt="Product"></div>
                                        <div class="mx-1"><img src="resources/assets/mypage/img/account/orders/04.png" width="48" alt="Product"></div>
                                    </div></a></div>
                                <div class="accordion-collapse collapse" id="orderTwo" data-bs-parent="#orders">
                                    <div class="accordion-body">
                                        <div class="table-responsive pt-1">
                                            <table class="table align-middle w-100" style="min-width: 450px;">
                                                <tr>
                                                    <td class="border-0 py-1 px-0">
                                                        <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="resources/assets/img/shop/cart/04.png" width="110" alt="Product"></a>
                                                            <div class="ps-3 ps-sm-4">
                                                                <h4 class="h6 mb-2"><a href="shop-single.html">Analogue wall clock</a></h4>
                                                                <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>Turquoise</span></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Quantity</div>
                                                        <div class="fs-sm fw-medium text-dark">1</div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Price</div>
                                                        <div class="fs-sm fw-medium text-dark">$25</div>
                                                    </td>
                                                    <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Total</div>
                                                        <div class="fs-sm fw-medium text-dark">$25</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="border-0 py-1 px-0">
                                                        <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="resources/assets/img/shop/cart/05.png" width="110" alt="Product"></a>
                                                            <div class="ps-3 ps-sm-4">
                                                                <h4 class="h6 mb-2"><a href="shop-single.html">Glossy round vase</a></h4>
                                                                <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>White</span></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Quantity</div>
                                                        <div class="fs-sm fw-medium text-dark">1</div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Price</div>
                                                        <div class="fs-sm fw-medium text-dark">$15</div>
                                                    </td>
                                                    <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Total</div>
                                                        <div class="fs-sm fw-medium text-dark">$15</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="border-0 py-1 px-0">
                                                        <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="resources/assets/img/shop/cart/06.png" width="110" alt="Product"></a>
                                                            <div class="ps-3 ps-sm-4">
                                                                <h4 class="h6 mb-2"><a href="shop-single.html">Ceramic flower pot</a></h4>
                                                                <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>Gray concrete</span></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Quantity</div>
                                                        <div class="fs-sm fw-medium text-dark">1</div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Price</div>
                                                        <div class="fs-sm fw-medium text-dark">$19</div>
                                                    </td>
                                                    <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Total</div>
                                                        <div class="fs-sm fw-medium text-dark">$19</div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="bg-secondary rounded-1 p-4 my-2">
                                            <div class="row">
                                                <div class="col-sm-5 col-md-3 col-lg-4 mb-3 mb-md-0">
                                                    <div class="fs-sm fw-medium text-dark mb-1">Payment:</div>
                                                    <div class="fs-sm">Upon the delivery</div><a class="btn btn-link py-1 px-0 mt-2" href="#"><i class="ai-time me-2 ms-n1"></i>Order history</a>
                                                </div>
                                                <div class="col-sm-7 col-md-5 mb-4 mb-md-0">
                                                    <div class="fs-sm fw-medium text-dark mb-1">Delivery address:</div>
                                                    <div class="fs-sm">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9, Canada</div>
                                                </div>
                                                <div class="col-md-4 col-lg-3 text-md-end">
                                                    <button class="btn btn-sm btn-outline-primary w-100 w-md-auto" type="button"><i class="ai-star me-2 ms-n1"></i>Leave a review</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Order-->
                            <div class="accordion-item border-top mb-0">
                                <div class="accordion-header"><a class="accordion-button fs-4 fw-normal text-decoration-none py-3 collapsed" href="#orderThree" data-bs-toggle="collapse" aria-expanded="false" aria-controls="orderThree">
                                    <div class="d-flex justify-content-between w-100" style="max-width: 440px;">
                                        <div class="me-3 me-sm-4">
                                            <div class="fs-sm text-muted">#34VB5540K83</div><span class="badge bg-faded-primary text-primary fs-xs">Delivered</span>
                                        </div>
                                        <div class="me-3 me-sm-4">
                                            <div class="d-none d-sm-block fs-sm text-muted mb-2">Order date</div>
                                            <div class="d-sm-none fs-sm text-muted mb-2">Date</div>
                                            <div class="fs-sm fw-medium text-dark">Jul 10, 2022</div>
                                        </div>
                                        <div class="me-3 me-sm-4">
                                            <div class="fs-sm text-muted mb-2">Total</div>
                                            <div class="fs-sm fw-medium text-dark">$38.00</div>
                                        </div>
                                    </div>
                                    <div class="accordion-button-img d-none d-sm-flex ms-auto">
                                        <div class="mx-1"><img src="resources/assets/mypage/img/account/orders/01.png" width="48" alt="Product"></div>
                                        <div class="mx-1"><img src="resources/assets/mypage/img/account/orders/05.png" width="48" alt="Product"></div>
                                    </div></a></div>
                                <div class="accordion-collapse collapse" id="orderThree" data-bs-parent="#orders">
                                    <div class="accordion-body">
                                        <div class="table-responsive pt-1">
                                            <table class="table align-middle w-100" style="min-width: 450px;">
                                                <tr>
                                                    <td class="border-0 py-1 px-0">
                                                        <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="resources/assets/img/shop/cart/01.png" width="110" alt="Product"></a>
                                                            <div class="ps-3 ps-sm-4">
                                                                <h4 class="h6 mb-2"><a href="shop-single.html">Candle in concrete bowl</a></h4>
                                                                <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>Gray night</span></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Quantity</div>
                                                        <div class="fs-sm fw-medium text-dark">1</div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Price</div>
                                                        <div class="fs-sm fw-medium text-dark">$16</div>
                                                    </td>
                                                    <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Total</div>
                                                        <div class="fs-sm fw-medium text-dark">$16</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="border-0 py-1 px-0">
                                                        <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="resources/assets/img/shop/cart/02.png" width="110" alt="Product"></a>
                                                            <div class="ps-3 ps-sm-4">
                                                                <h4 class="h6 mb-2"><a href="shop-single.html">Exquisite glass vase </a></h4>
                                                                <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>Rose</span></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Quantity</div>
                                                        <div class="fs-sm fw-medium text-dark">2</div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Price</div>
                                                        <div class="fs-sm fw-medium text-dark">$11</div>
                                                    </td>
                                                    <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Total</div>
                                                        <div class="fs-sm fw-medium text-dark">$22</div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="bg-secondary rounded-1 p-4 my-2">
                                            <div class="row">
                                                <div class="col-sm-5 col-md-3 col-lg-4 mb-3 mb-md-0">
                                                    <div class="fs-sm fw-medium text-dark mb-1">Payment:</div>
                                                    <div class="fs-sm">Upon the delivery</div><a class="btn btn-link py-1 px-0 mt-2" href="#"><i class="ai-time me-2 ms-n1"></i>Order history</a>
                                                </div>
                                                <div class="col-sm-7 col-md-5 mb-4 mb-md-0">
                                                    <div class="fs-sm fw-medium text-dark mb-1">Delivery address:</div>
                                                    <div class="fs-sm">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9, Canada</div>
                                                </div>
                                                <div class="col-md-4 col-lg-3 text-md-end">
                                                    <button class="btn btn-sm btn-outline-primary w-100 w-md-auto" type="button"><i class="ai-star me-2 ms-n1"></i>Leave a review</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Order-->
                            <div class="accordion-item border-top border-bottom mb-0">
                                <div class="accordion-header"><a class="accordion-button d-flex fs-4 fw-normal text-decoration-none py-3 collapsed" href="#orderFour" data-bs-toggle="collapse" aria-expanded="false" aria-controls="orderFour">
                                    <div class="d-flex justify-content-between w-100" style="max-width: 440px;">
                                        <div class="me-3 me-sm-4">
                                            <div class="fs-sm text-muted">#502TR872W2</div><span class="badge bg-faded-primary text-primary fs-xs">Delivered</span>
                                        </div>
                                        <div class="me-3 me-sm-4">
                                            <div class="d-none d-sm-block fs-sm text-muted mb-2">Order date</div>
                                            <div class="d-sm-none fs-sm text-muted mb-2">Date</div>
                                            <div class="fs-sm fw-medium text-dark">May 11, 2022</div>
                                        </div>
                                        <div class="me-3 me-sm-4">
                                            <div class="fs-sm text-muted mb-2">Total</div>
                                            <div class="fs-sm fw-medium text-dark">$17.00</div>
                                        </div>
                                    </div>
                                    <div class="accordion-button-img d-none d-sm-flex ms-auto">
                                        <div class="mx-1"><img src="resources/assets/mypage/img/account/orders/06.png" width="48" alt="Product"></div>
                                    </div></a></div>
                                <div class="accordion-collapse collapse" id="orderFour" data-bs-parent="#orders">
                                    <div class="accordion-body">
                                        <div class="table-responsive pt-1">
                                            <table class="table align-middle w-100" style="min-width: 450px;">
                                                <tr>
                                                    <td class="border-0 py-1 px-0">
                                                        <div class="d-flex align-items-center"><a class="d-inline-block flex-shrink-0 bg-secondary rounded-1 p-md-2 p-lg-3" href="shop-single.html"><img src="resources/assets/img/shop/cart/07.png" width="110" alt="Product"></a>
                                                            <div class="ps-3 ps-sm-4">
                                                                <h4 class="h6 mb-2"><a href="shop-single.html">Dispenser for soap</a></h4>
                                                                <div class="text-muted fs-sm me-3">Color: <span class='text-dark fw-medium'>White marble</span></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Quantity</div>
                                                        <div class="fs-sm fw-medium text-dark">1</div>
                                                    </td>
                                                    <td class="border-0 py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Price</div>
                                                        <div class="fs-sm fw-medium text-dark">$17</div>
                                                    </td>
                                                    <td class="border-0 text-end py-1 pe-0 ps-3 ps-sm-4">
                                                        <div class="fs-sm text-muted mb-2">Total</div>
                                                        <div class="fs-sm fw-medium text-dark">$17</div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="bg-secondary rounded-1 p-4 my-2">
                                            <div class="row">
                                                <div class="col-sm-5 col-md-3 col-lg-4 mb-3 mb-md-0">
                                                    <div class="fs-sm fw-medium text-dark mb-1">Payment:</div>
                                                    <div class="fs-sm">Upon the delivery</div><a class="btn btn-link py-1 px-0 mt-2" href="#"><i class="ai-time me-2 ms-n1"></i>Order history</a>
                                                </div>
                                                <div class="col-sm-7 col-md-5 mb-4 mb-md-0">
                                                    <div class="fs-sm fw-medium text-dark mb-1">Delivery address:</div>
                                                    <div class="fs-sm">401 Magnetic Drive Unit 2,<br>Toronto, Ontario, M3J 3H9, Canada</div>
                                                </div>
                                                <div class="col-md-4 col-lg-3 text-md-end">
                                                    <button class="btn btn-sm btn-outline-primary w-100 w-md-auto" type="button"><i class="ai-star me-2 ms-n1"></i>Leave a review</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
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
                <h3 class="h6 text-uppercase d-none d-md-block">Useful links</h3><a class="btn-more h6 mb-1 text-uppercase text-decoration-none d-flex align-items-center collapsed d-md-none" href="#useful" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="useful" data-show-label="Useful links" data-hide-label="Useful links"></a>
                <div class="collapse d-md-block" id="useful" data-bs-parent="#links">
                    <ul class="nav flex-column pb-2 pb-md-0">
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Trending</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Sale</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">About us</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Blog</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Contact</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Shipping &amp; Returns</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Delivery info</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3 col-xl-2 pb-2 pb-md-0">
                <h3 class="h6 text-uppercase d-none d-md-block">Decors</h3><a class="btn-more h6 mb-1 text-uppercase text-decoration-none d-flex align-items-center collapsed d-md-none" href="#decors" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="decors" data-show-label="Decors" data-hide-label="Decors"></a>
                <div class="collapse d-md-block" id="decors" data-bs-parent="#links">
                    <ul class="nav flex-column pb-2 pb-md-0">
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Vases</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Mirrors</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Paintings</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Figurines</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Textile</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Lighting</a></li>
                        <li class="nav-item"><a class="nav-link fw-normal px-0 py-1" href="#">Photo frames</a></li>
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