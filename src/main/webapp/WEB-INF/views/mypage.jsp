<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="common/header_main.jsp" %>
<%@ page import="com.example.gogo.mypage.vo.MyPageVO" %>
<%@ page import="com.example.gogo.mypage.vo.ReViewVO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
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
                            class="d-block avatar avatar-xxl p-2 mb-2" src="resources/img/defaultmember.png"
                            alt=""></a>
                        <h5><%= memberInfo.getMember_nickname() %>
                        </h5>
                    </div>
                    <div class="card-body p-4">
                        <div class="d-flex align-items-center mb-3">
                            <div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
                                <img src="resources/img/review.png" class="svg-icon text-primary svg-icon-md" alt="default">
                            </div>
                            <div>
                                <p class="mb-0"><%= reviewInfoList.size() %> reviews</p>
                            </div>
                        </div>
                        <hr>
                        <div class="button-container" style="display: flex; justify-content: space-between; align-items: center;">
                            <h6 style="margin: 0;">내정보</h6>
                            <button id="editButton" class="btn btn-sm btn-secondary" onclick="showCompleteButton()">수정하기
                            </button>
                            <button id="completeButton" class="btn btn-sm btn-primary" style="display: none; "
                                    onclick="showEditButton(),saveUserInfo()">완료
                            </button>
                        </div>
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
                                <%
                                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                                    Date birthDate = sdf.parse(memberInfo.getMember_birth());
                                    SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
                                    String formattedBirthDate = outputFormat.format(birthDate);
                                %>
                                <td class="border-0 text-muted py-1 px-0">생년월일</td>
                                <td class="border-0 text-dark fw-medium py-1 ps-3"><%= formattedBirthDate %>
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
                <h1 class="hero-heading mb-0">안녕하세요,<%= memberInfo.getMember_nickname() %>님!</h1>
                <div class="text-block">
                    <p><span class="badge badge-secondary-light">Joined in 2024</span></p>
                    <h6>오늘 방문한 페이지:</h6>
                    <ul>
                        <c:set var="count" value="0" />
                        <c:forEach items="${visitedPagesList}" var="page">
                            <c:if test="${count lt 5}">
                                <c:if test="${!visitedPages.contains(page.id)}">
                                    <li><a href="/detail?event_id=${page.id}">${page.name}</a></li>
                                    <c:set var="count" value="${count + 1}" />
                                </c:if>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>

                <div class="text-block">
                    <p class="subtitle text-sm text-primary">리뷰</p>
                    <h5 class="mb-4">내가 쓴 리뷰 </h5>
                    <div class="row">
                        <% if (reviewInfoList.isEmpty()) { %>
                        <p>여행에 참여하고 리뷰를 작성해보세요.</p>
                        <% } else { %>
                        <% for (ReViewVO review : reviewInfoList) { %>
                        <div class="d-flex d-block d-sm-flex review">
                            <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
                                <a href="/detail?event_id=<%= review.getEvent_no() %>">
                                    <img class="d-block avatar avatar-xl p-2 mb-2" src="resources/img/index/photo/restaurant-1430931071372-38127bd472b8.jpg" alt="dd">
                                </a>
                                <span class="text-uppercase text-muted text-sm"><%= review.getCreate_date() %></span>
                            </div>
                            <div class="card-body">
                                <div>
                                    <h6 class="mt-2 mb-1 card-title"><%= review.get행사명() %></h6>
                                    <% int reviewGrade = Integer.parseInt(review.getReview_grade()); %>
                                    <div class="review-stars">
                                        <% for (int i = 0; i < reviewGrade; i++) { %>
                                        <i class="fa fa-star text-primary"></i>
                                        <% } %>
                                        <% for (int i = 0; i < 5 - reviewGrade; i++) { %>
                                        <i class="fa fa-star text-gray-300"></i>
                                        <% } %>
                                    </div>
                                    <p class="text-muted text-sm"><%= review.getReview_field() %></p>
                                </div>
                            </div>
                        </div>
                        <% } %>
                        <% } %>
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
