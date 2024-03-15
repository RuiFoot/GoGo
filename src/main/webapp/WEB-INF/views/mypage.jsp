<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="common/header_main.jsp" %>
<%@ page import="com.example.gogo.mypage.vo.MyPageVO" %>
<%@ page import="com.example.gogo.mypage.vo.ReViewVO" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<body style="padding-top: 72px;">
<%-- 사용자 정보를 받아와서 변수에 저장 --%>
    <%

        MyPageVO memberInfo = (MyPageVO)request.getAttribute("memberInfo");
        List<ReViewVO> reviewInfoList = (List<ReViewVO>)request.getAttribute("reviewInfoList");
        // 가져온 정보가 null이 아닌지 확인
        if (memberInfo != null) {
    %>
<!-- Page wrapper-->
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 me-lg-auto">
                <div class="card border-0 shadow mb-6 mb-lg-0">
                    <div class="card-header bg-gray-100 py-4 border-0 text-center"><a class="d-inline-block"
                                                                                      href="#"><img
                            class="d-block avatar avatar-xxl p-2 mb-2" src="resources/img/index/avatar/avatar-10.jpg"
                            alt=""></a>
                        <h5><%= memberInfo.getMember_nickname() %>
                        </h5>
                    </div>
                    <div class="card-body p-4">
                        <div class="d-flex align-items-center mb-3">
                            <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
                                <svg class="svg-icon text-primary svg-icon-md">
                                    <use xlink:href="#diploma-1"></use>
                                </svg>
                            </div>
                            <div>
                                <p class="mb-0">2877 reviews</p>
                            </div>
                        </div>
                        <hr>
                        <h6>내정보</h6>
                        <button id="editButton" class="btn btn-sm btn-secondary" onclick="showCompleteButton()">수정하기
                        </button>
                        <button id="completeButton" class="btn btn-sm btn-primary" style="display: none; "
                                onclick="showEditButton(),saveUserInfo()">완료
                        </button>
                        <table class="card-text text-muted" id="userInfoTable">
                            <tr>
                                <td class="border-0 text-muted py-1 px-0">이름</td>
                                <td class="border-0 text-dark fw-medium py-1 ps-3"><%= memberInfo.getMember_name() %>
                                </td>
                            </tr>
                            <tr>
                                <td class="border-0 text-muted py-1 px-0">이메일</td>
                                <td class="border-0 text-dark fw-medium py-1 ps-3"><%= memberInfo.getMember_email() %>
                                </td>
                            </tr>
                            <tr>
                                <td class="border-0 text-muted py-1 px-0">생년월일</td>
                                <td class="border-0 text-dark fw-medium py-1 ps-3"><%= memberInfo.getMember_birth() %>
                                </td>
                            </tr>
                            <tr>
                                <td class="border-0 text-muted py-1 px-0">성별</td>
                                <td class="border-0 text-dark fw-medium py-1 ps-3"><%= memberInfo.getMember_gender() %>
                                </td>
                            </tr>
                        </table>
                        <!-- 수정할 사용자 정보 입력 폼 -->
                        <form id="editInfoForm" style="display: none;">
                            <table>
                                <tr>
                                    <td>이름:</td>
                                    <td><input type="text" id="newName" placeholder="이름"></td>
                                </tr>
                                <tr>
                                    <td>생년월일:</td>
                                    <td><input type="date" id="newBirth" placeholder="생년월일"></td>
                                </tr>
                                <tr>
                                    <td>성별:</td>
                                    <td><input type="text" id="newGender" placeholder="성별"></td>
                                </tr>
                            </table>
                        </form>
                        <!-- 폼끝 -->
                    </div>
                </div>
            </div>
            <div class="col-lg-9 ps-lg-5">
                <h1 class="hero-heading mb-0">안녕하세요,<%= memberInfo.getMember_nickname() %>!</h1>
                <div class="text-block">
                    <p><span class="badge badge-secondary-light">Joined in 2024</span></p>
                    <p class="text-muted"> 일단 임시로 있음 자기소개인데 인삿말이나 다른사용자가 방문안할꺼면 굳이? 아니면 메모장역할 근데 그것도 필요한가? 기능나중에
                        넣을때쓰자 </p>
                </div>

                <div class="text-block">
                    <p class="subtitle text-sm text-primary">리뷰</p>
                    <h5 class="mb-4">내가 쓴 리뷰 </h5>

                    <%-- 리뷰 목록 반복 출력 --%>
                    <% for (ReViewVO review : reviewInfoList) { %>
                    <div class="d-flex d-block d-sm-flex review">
                        <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img
                                class="d-block avatar avatar-xl p-2 mb-2" src="resources/img/index/avatar/avatar-8.jpg"
                                alt="Padmé Amidala">
                            <span class="text-uppercase text-muted text-sm"><%= review.getCreate_date() %></span></div>
                        <div>
                            <h6 class="mt-2 mb-1"><%= review.get행사명() %>
                            </h6>
                            <%
                                int reviewGrade = Integer.parseInt(review.getReview_grade());
                                for (int i = 0; i < reviewGrade; i++) {
                            %>
                            <i class="fa fa-star text-primary"></i>

                            <% } %>

                            <%
                                for (int i = 0; i < 5 - reviewGrade; i++) {
                            %>
                            <i class="fa fa-star text-gray-300"></i>
                            <% } %>
                            <p class="text-muted text-sm"><%= review.getReview_field() %>
                            </p>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </div>
    </div>
</section>
    <% } %>

<jsp:include page="common/footer_main.jsp"/>

<script>
    function showCompleteButton() {
        // 수정하기 버튼을 감추고
        document.getElementById("editButton").style.display = "none";
        // 유저 정보를 감춥니다.
        document.getElementById("userInfoTable").style.display = "none";
        // 수정 입력 상자를 보이도록 변경합니다.
        document.getElementById("editInfoForm").style.display = "block";
        // 완료 버튼을 보이도록 변경합니다.
        document.getElementById("completeButton").style.display = "inline-block";
    }

    //완료 버튼을 클릭하면 실행될 함수
    function showEditButton() {
        // 수정하기 버튼을 보이도록 변경합니다.
        document.getElementById("editButton").style.display = "inline-block";
        // 완료 버튼을 감춥니다.
        document.getElementById("completeButton").style.display = "none";
        // 사용자 정보 테이블을 보이도록 변경합니다.
        document.getElementById("userInfoTable").style.display = "block";
        // 수정 입력 상자를 감춥니다.
        document.getElementById("editInfoForm").style.display = "none";
    }

    //수정된 정보를 서버에 전송하는 함수
    function saveUserInfo() {
        // 수정된 정보를 가져오는 부분
        var newName = document.getElementById("newName").value;
        var newBirth = document.getElementById("newBirth").value;
        var newGender = document.getElementById("newGender").value;

        // AJAX를 이용하여 서버로 수정된 정보를 전송하는 부분
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/updateUserInfo", true); // 수정된 정보를 처리할 서버의 주소를 입력합니다.
        xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                // 성공적으로 완료되면 페이지를 새로 고칩니다.
                location.reload();
                // 사용자에게 알림을 표시합니다.
                alert("수정이 완료되었습니다.");
                console.log(xhr.responseText);
            }
        };
        var data = JSON.stringify({
            member_no: <%= memberInfo.getMember_no() %>,
            member_name: newName,
            member_birth: newBirth,
            member_gender: newGender
        });
        xhr.send(data);
    }
</script>