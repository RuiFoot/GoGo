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
                <div class="mb-4"><a href="/"><img class="img-fluid mb-4" src="resources/img/logo.png" alt="..."
                                                   style="max-width: 4rem;"></a>
                    <h2>회원가입</h2>
                </div>
                <form class="form-validate" method="post" action="/signup/addmember">
                    <div class="mb-4 position-relative">
                        <label class="form-label" for="loginUsername"> 이메일 주소</label>
                        <input class="form-control" name="member_email" id="member_email" type="text"
                               placeholder="기역기역@address.com" autocomplete="off">
                        <button type="button" class="btn btn-primary duplicate-check-btn" onclick="CheckByEmail()">중복 확인</button>
                    </div>
                    <div class="mb-4 row g-1">
                        <label class="form-label " for="loginPassword"> 비밀번호</label>
                        <div class="col">
                            <input class="form-control" name="member_pw" id="member_pw" placeholder="Password"
                                   type="password">
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-outline-secondary" type="button" id="togglePassword"><span
                                    class="fas fa-eye"></span></button>
                        </div>
                    </div>
                    <div class="mb-4 row g-1">
                        <label class="form-label" for="loginPassword2"> 비밀번호 중복확인</label>
                        <div class="col">
                            <input class="form-control" name="loginPassword2" id="loginPassword2" placeholder="Password"
                                   type="password">
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-outline-secondary" type="button" id="togglePasswordConfirm"><span
                                    class="fas fa-eye"></span></button>
                        </div>
                    </div>
                    <div class="mb-4">
                        <label class="form-label" for="loginUsername"> 이름</label>
                        <input class="form-control" name="member_name" id="member_name" placeholder="Name" type="text">
                    </div>
                    <div class="mb-4 position-relative">
                        <label class="form-label" for="loginUsername"> 닉네임</label>
                        <input class="form-control" name="member_nickname" id="member_nickname" placeholder="Nickname"
                               type="text">
                        <button type="button" class="btn btn-primary duplicate-check-btn" onclick="CheckByNickname()">중복 확인</button>
                    </div>
                    <label class="form-label" for="loginUsergender"> 성별</label>
                    <div class="mb-4 gender-container">
                        <div class="gender-box">
                            <input class="form-control" type="radio" name="member_gender" value="male" required/>
                            <label for="male">남성</label>
                        </div>
                        <div class="gender-box">
                            <input class="form-control" type="radio" name="member_gender" value="female" required/>
                            <label for="female">여성</label>
                        </div>
                    </div>
                    <div class="mb-4">
                        <label class="form-label" for="loginPassword2"> 생년월일</label>
                        <input type="date" id="birthdate" name="member_birth" class="form-control" required>
                    </div>
                    <div class="d-grid gap-2">
                        <button class="btn btn-lg btn-primary" type="submit">Sign up</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
            <!-- Image-->
            <div class="bg-cover h-100 me-n3"
                 style="background-image: url(resources/img/login2.png);"></div>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<!-- jQuery-->
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

    document.addEventListener("DOMContentLoaded", function () {
        // 비밀번호 표시/숨기기 기능
        const togglePassword = document.getElementById('togglePassword');
        const password = document.getElementById('member_pw');

        togglePassword.addEventListener('click', function () {
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            this.querySelector('span').classList.toggle('fa-eye-slash');
        });

        // 비밀번호 확인 입력란에도 같은 기능 적용
        const togglePasswordConfirm = document.getElementById('togglePasswordConfirm');
        const passwordConfirm = document.getElementById('loginPassword2');

        togglePasswordConfirm.addEventListener('click', function () {
            const type = passwordConfirm.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordConfirm.setAttribute('type', type);
            this.querySelector('span').classList.toggle('fa-eye-slash');
        });
    });


    document.addEventListener("DOMContentLoaded", function () {
        // 이메일 유효성을 확인하는 함수
        function checkEmailValidity() {
            const emailInput = document.getElementById('member_email');
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

        // 이메일 입력란에 입력 이벤트 리스너 추가
        const emailInput = document.getElementById('member_email');
        emailInput.addEventListener('input', checkEmailValidity);
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // 비밀번호 확인 스크립트
        const passwordInput = document.getElementById('member_pw');
        const confirmPasswordInput = document.getElementById('loginPassword2');
        const form = document.querySelector('form');

        function checkPasswordMatch() {
            const password = passwordInput.value;
            const confirmPassword = confirmPasswordInput.value;

            if (password !== confirmPassword) {
                confirmPasswordInput.setCustomValidity("비밀번호가 일치하지 않습니다.");
                alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
            } else {
                confirmPasswordInput.setCustomValidity("");
            }
        }

        confirmPasswordInput.addEventListener('blur', checkPasswordMatch);

        form.addEventListener('submit', function (event) {
            checkPasswordMatch();
            if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add('was-validated');
        });

        // 아이디 중복 확인
        const usernameInput = document.getElementById('member_name');
        usernameInput.addEventListener('input', function () {
            const username = usernameInput.value;
            // 서버에서 아이디의 가용성을 확인하는 요청을 보내고 결과를 받아옵니다.
            // 이 예시에서는 단순히 true 또는 false를 반환하도록 합니다.
            const isUsernameAvailable = checkUsernameAvailabilityFromServer(username);

            if (!isUsernameAvailable) {
                usernameInput.setCustomValidity("중복된 아이디입니다.");
            } else {
                usernameInput.setCustomValidity("");
            }
        });

        // 아이디 중복 확인을 위해 서버로 요청을 보내고 결과를 반환하는 함수
        function checkUsernameAvailabilityFromServer(username) {
            // 실제 서버 요청을 보내고 결과를 반환하는 로직을 여기에 구현합니다.
            // 여기서는 임의로 true를 반환하는 것으로 가정합니다.
            return true;
        }
    });

    function CheckByNickname() {
        var member_nickname = $("#member_nickname").val();

        $.ajax({
            url: "/signup/checkNickname",
            method: "POST",
            data: {member_nickname: member_nickname},
            success: function (response) {
                if (response) {
                    alert("중복된 닉네임입니다.");
                } else {
                    alert("사용 가능한 닉네임입니다.");
                }
            }
        });
    }

    function CheckByEmail() {
        var member_email = $("#member_email").val();

        $.ajax({
            url: "/signup/checkemail",
            method: "POST",
            data: {member_email: member_email},
            success: function (response) {
                if (response) {
                    alert("중복된 이메일입니다.");
                } else {
                    alert("사용 가능한 이메일입니다.");
                }
            }
        });
    }
</script>
<script >
    //JavaScript code to toggle gender selection
    document.addEventListener("DOMContentLoaded", function () {
        // Get all gender boxes
        const genderBoxes = document.querySelectorAll('.gender-box');

        // Add click event listener to each gender box
        genderBoxes.forEach(function (box) {
            box.addEventListener('click', function () {
                // Deselect all other boxes
                genderBoxes.forEach(function (otherBox) {
                    otherBox.classList.remove('active');
                });

                // Toggle active class for clicked box
                this.classList.toggle('active');

                // Get the associated radio button
                const radioButton = this.querySelector('input[type="radio"]');

                // Check the radio button
                radioButton.checked = true;
            });
        });
    });




</script>
</body>
</html>