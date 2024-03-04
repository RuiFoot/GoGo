<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Primary Meta Tags -->
    <title>기역기역(sign_up)</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="title" content="Spaces - Sign up">
    <meta name="author" content="Themesberg">
    <meta name="description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
    <meta name="keywords" content="bootstrap, bootstrap 4 template, directory listing bootstrap, bootstrap 4 listing, bootstrap listing, bootstrap 4 directory listing template, vector map, leaflet js template, mapbox theme, mapbox template, dashboard, themesberg, user dashboard bootstrap, dashboard bootstrap, ui kit, bootstrap ui kit, premium bootstrap theme" />
    <link rel="canonical" href="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">


    <!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:url" content="https://demo.themesberg.com/pixel-pro">
    <meta property="twitter:title" content="Spaces - Sign up">
    <meta property="twitter:description" content="Premium Directory Listing Bootstrap 4 Template featuring 37 hand-crafted pages, a dashboard an Mapbox integration. Spaces also comes with a complete UI Kit featuring over 700 components by Themesberg.">
    <meta property="twitter:image" content="https://themesberg.s3.us-east-2.amazonaws.com/public/products/spaces/thumbnail.jpg">

    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="120x120" href="resources/assets/img/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="resources/assets/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="resources/assets/img/favicon/favicon-16x16.png">
    <link rel="manifest" href="resources/assets/img/favicon/site.webmanifest">
    <link rel="mask-icon" href="resources/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">

    <!-- Fontawesome -->
    <link type="text/css" href="resources/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Leaflet JS -->
    <link type="text/css" href="resources/vendor/leaflet/dist/leaflet.css" rel="stylesheet">

    <!-- Fancybox -->
    <link rel="stylesheet" href="resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.css">

    <!-- VectorMap -->
    <link rel="stylesheet" href="resources/vendor/jqvmap/dist/jqvmap.min.css">

    <!-- Main CSS -->
    <link type="text/css" href="resources/css/spaces.css" rel="stylesheet">



    <!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->

</head>

<body>
<!-- <main>

    <div class="preloader bg-dark flex-column justify-content-center align-items-center">
<div class="position-relative">
    <img src="resources/assets/img/brand/light-without-letter.svg" alt="Logo loader">
    <img src="resources/assets/img/brand/letter.svg" class="rotate-letter" alt="Letter loader">
</div> -->
</div>


<!-- Section -->
<section class="min-vh-100 d-flex align-items-center section-image overlay-soft-dark py-5 py-lg-0" data-background="resources/assets/img/form-image.jpg">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="text-center text-md-center mb-5 mt-md-0 text-white">
                    <h1 class="mb-0 h3">회원가입</h1>
                </div>
            </div>
            <div class="col-12 d-flex align-items-center justify-content-center">
                <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                    <form action="#">
                        <!-- Form -->
                        <div class="form-group">
                            <label for="exampleInputIcon4">이메일</label>
                            <div class="input-group mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                </div>
                                <input class="form-control" id="exampleInputIcon4" placeholder="example@company.com" type="text" aria-label="email adress">
                            </div>
                        </div>
                        <!-- End of Form -->
                        <div class="form-group">
                            <!-- Form -->
                            <div class="form-group">
                                <label for="password">비밀번호</label>
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                    </div>
                                    <input class="form-control" id="password" placeholder="비밀번호" type="password" aria-label="Password" required>
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button" id="togglePassword"><span class="fas fa-eye"></span></button>
                                    </div>
                                </div>
                            </div>

                            <!-- End of Form -->
                            <!-- Form -->
                            <div class="form-group">
                                <label for="password_confirm">비밀번호 중복확인</label>
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                    </div>
                                    <input class="form-control" id="password_confirm" placeholder="비밀번호 중복확인" type="password" aria-label="Password" required>
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button" id="togglePasswordConfirm"><span class="fas fa-eye"></span></button>
                                    </div>
                                </div>
                            </div>

                            <!-- End of Form -->
                            <!-- Form  -->
                            <div class="form-group">
                                <label for="password_confirm">이름</label>
                                <div class="input-group">
                                    <input class="form-control" id="name" placeholder="이름을 입력해주세요." type="name" aria-label="name" required>
                                </div>
                            </div>
                            <!-- End of Form -->

                            <!-- Form  -->
                            <div class="form-group">
                                <label>성별</label>
                                <div class="input-group">
                                    <div class="gender-box">
                                        <input type="radio" name="gender" value="male" required />
                                        <label for="male">남성</label>
                                    </div>
                                    <div class="gender-box">
                                        <input type="radio" name="gender" value="female" required />
                                        <label for="female">여성</label>
                                    </div>
                                </div>
                            </div>
                            <!-- End of Form -->
                            <!-- Form  -->
                            <div class="form-group">
                                <label for="birthdate">생년월일</label>
                                <div class="input-group">
                                    <input type="date" id="birthdate" name="birthdate" class="form-control" required>
                                </div>
                            </div>
                            <!-- End of Form -->

                            <div class="form-check mb-4">
                                <input class="form-check-input" type="checkbox" value="" id="terms">
                                <label class="form-check-label" for="terms">
                                    <span class="small">약관에 <a class="text-secondary" href="./terms.html">동의합니다.</a></span>
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-block btn-primary">계정 만들기</button>
                    </form>
                    <!-- <div class="mt-3 mb-4 text-center">
                        <span class="font-weight-normal">or</span>
                    </div>
                    <div class="btn-wrapper my-4 text-center">
                        <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook mr-2" type="button" aria-label="facebook button" title="facebook button">
                            <span aria-hidden="true" class="fab fa-facebook-f"></span>
                        </button>
                        <button class="btn btn-icon-only btn-pill btn-outline-light text-twitter mr-2" type="button" aria-label="twitter button" title="twitter button">
                            <span aria-hidden="true" class="fab fa-twitter"></span>
                        </button>
                        <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook" type="button" aria-label="github button" title="github button">
                            <span aria-hidden="true" class="fab fa-github"></span>
                        </button>
                    </div> -->
                    <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                                <span class="font-weight-normal">
                                    계정이 이미 있습니까?
                                    <a href="http://127.0.0.1:5500/semi/html/sign_in.html" class="font-weight-bold">여기에 로그인하십시오</a>
                                </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</main>

<!-- Core -->
<script src="resources/vendor/jquery/dist/jquery.min.js"></script>
<script src="resources/vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/vendor/headroom.js/dist/headroom.min.js"></script>
<script src="resources/vendor/onscreen/dist/on-screen.umd.min.js"></script>



<!-- NoUISlider -->
<script src="resources/vendor/nouislider/distribute/nouislider.min.js"></script>

<!-- Bootstrap Datepicker -->
<script src="resources/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<!-- jQuery Waypoints -->
<script src="resources/vendor/waypoints/lib/jquery.waypoints.min.js"></script>

<!-- Owl acrousel -->
<script src="resources/vendor/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Smooth scroll -->
<script src="resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Fancybox -->
<script src="resources/vendor/@fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>

<!-- Sticky sidebar -->
<script src="resources/vendor/sticky-sidebar/dist/sticky-sidebar.min.js"></script>

<!-- Mapbox & Leaflet.js -->
<script src="resources/vendor/leaflet/dist/leaflet.js"></script>

<!-- Chartist -->
<script src="resources/vendor/chartist/dist/chartist.min.js"></script>
<script src="resources/vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

<!-- Vector Maps -->
<script src="resources/vendor/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="resources/vendor/jqvmap/dist/maps/jquery.vmap.usa.js"></script>

<!-- Sliderform -->
<script src="resources/assets/js/jquery.slideform.js"></script>

<!-- Spaces custom Javascript -->
<script src="resources/assets/js/spaces.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        // 각 성별 상자 요소를 선택합니다.
        const genderBoxes = document.querySelectorAll('.gender-box');

        // 각 성별 상자에 클릭 이벤트 리스너를 추가합니다.
        genderBoxes.forEach(box => {
            box.addEventListener('click', () => {
                // 모든 성별 상자의 활성화 클래스를 제거합니다.
                genderBoxes.forEach(b => {
                    b.classList.remove('active');
                });

                // 클릭한 성별 상자에 활성화 클래스를 추가합니다.
                box.classList.add('active');
            });
        });
    });
    document.addEventListener("DOMContentLoaded", function() {
        const togglePassword = document.getElementById('togglePassword');
        const password = document.getElementById('password');

        togglePassword.addEventListener('click', function() {
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            this.querySelector('span').classList.toggle('fa-eye-slash');
        });
    });


    document.addEventListener("DOMContentLoaded", function() {
        const togglePasswordConfirm = document.getElementById('togglePasswordConfirm');
        const passwordConfirm = document.getElementById('password_confirm');

        togglePasswordConfirm.addEventListener('click', function() {
            const type = passwordConfirm.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordConfirm.setAttribute('type', type);
            this.querySelector('span').classList.toggle('fa-eye-slash');
        });
    });
</script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const emailInput = document.getElementById('exampleInputIcon4');
        const passwordInput = document.getElementById('password');
        const confirmPasswordInput = document.getElementById('password_confirm');
        const usernameInput = document.getElementById('username');
        const form = document.querySelector('form');

        // 이메일 유효성을 확인하는 함수
        function checkEmailValidity() {
            const email = emailInput.value;
            // 이메일 정규식 패턴
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            // 이메일이 유효한지 확인
            const isValid = emailPattern.test(email);

            if (!isValid) {
                emailInput.setCustomValidity("이메일 형식이 올바르지 않습니다.");
            } else {
                emailInput.setCustomValidity("");
            }
        }

        // 비밀번호 일치 여부를 확인하는 함수
        function checkPasswordMatch() {
            const password = passwordInput.value;
            const confirmPassword = confirmPasswordInput.value;

            if (password !== confirmPassword) {
                confirmPasswordInput.setCustomValidity("비밀번호가 일치하지 않습니다.");
            } else {
                confirmPasswordInput.setCustomValidity("");
            }
        }

        // 아이디 중복 확인 함수 (서버에서 확인)
        function checkUsernameAvailability() {
            const username = usernameInput.value;

            // 서버 API를 호출하여 아이디의 가용성을 확인하고 결과를 받아옴
            // 이 부분은 서버에서 구현해야 합니다.
            const isUsernameAvailable = checkUsernameAvailabilityFromServer(username);

            if (!isUsernameAvailable) {
                usernameInput.setCustomValidity("중복된 아이디입니다.");
            } else {
                usernameInput.setCustomValidity("");
            }
        }

        // 아이디 중복 확인을 위해 서버로 요청을 보내고 결과를 반환하는 함수
        function checkUsernameAvailabilityFromServer(username) {
            // 서버에서 아이디의 가용성을 확인하는 요청을 보내고 결과를 받아옵니다.
            // 이 예시에서는 단순히 true 또는 false를 반환하도록 합니다.
            // 실제로는 서버에서 데이터베이스에 접근하여 확인해야 합니다.
            // 여기서는 임의로 true를 반환하는 것으로 가정합니다.
            return true;
        }

        // 이메일 입력란에 입력 이벤트 리스너 추가
        emailInput.addEventListener('input', checkEmailValidity);
        // 비밀번호 확인 입력란에 입력 이벤트 리스너 추가
        confirmPasswordInput.addEventListener('input', checkPasswordMatch);
        // 아이디 입력란에 입력 이벤트 리스너 추가
        usernameInput.addEventListener('input', checkUsernameAvailability);

        // 폼 제출 시 유효성 검사 수행
        form.addEventListener('submit', function(event) {
            checkEmailValidity();
            checkPasswordMatch();
            checkUsernameAvailability();
            // 유효성 검사가 통과되지 않으면 제출을 막습니다.
            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add('was-validated');
        });
    });
</script>


</body>

</html>