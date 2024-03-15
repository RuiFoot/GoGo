<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="common/header_main.jsp" %>
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

        return {date: formattedDate, time: formattedTime};
    }

</script>


<!-- Main content-->
<!-- Wraps everything except footer to push footer to the bottom of the page if there is little content -->

<!-- Hero Section-->
<section class="pt-7 pb-5 d-flex align-items-end dark-overlay bg-cover"
         style="background-image: url('resources/img/index/photo/restaurant-1515164783716-8e6920f3e77c.jpg');">
    <div class="container overlay-content">
        <div class="d-flex justify-content-between align-items-start flex-column flex-lg-row align-items-lg-end">
            <div class="text-white mb-4 mb-lg-0">
                <h1 class="text-shadow verified">${festivalList.name}</h1>
                <h3 class="text-shadow verified">${festivalList.place}</h3>
                <c:choose>
                    <c:when test="${festivalList.roadAddress.equals('정보 없음')}">
                        <p><i class="fa-map-marker-alt fas me-2"></i>${festivalList.numberAddress}</p>
                    </c:when>
                    <c:when test="${festivalList.numberAddress.equals('정보 없음')}">
                        <p><i class="fa-map-marker-alt fas me-2"></i>${festivalList.roadAddress}</p>
                    </c:when>
                    <c:when test="${festivalList.numberAddress.equals('정보 없음') && festivalList.roadAddress.equals('정보 없음')}">
                    </c:when>
                </c:choose>
                <p class="mb-0 d-flex align-items-center"><i class="fa fa-xs fa-star text-primary"></i><i
                        class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i
                        class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200 me-4"> </i>8
                    Reviews</p>
            </div>
        </div>
    </div>
</section>
<section class="py-6">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <!-- About Listing-->
                <div class="text-block">
                    <h3 class="mb-3">About</h3>
                    <p class="text-muted"> ${festivalList.category} </p>

                </div>
                <div class="text-block">
                    <!-- Listing Location-->
                    <h3 class="mb-4">Location</h3>
                    <div class="map-wrapper-300 mb-3">
                        <div class="h-100" id="map"></div>
                    </div>
                </div>
                <div class="text-block">
                    <p class="subtitle text-sm text-primary">Reviews </p>
                    <h5 class="mb-4">Listing Reviews </h5>
                    <div class="d-flex d-block d-sm-flex review">
                        <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img
                                class="d-block avatar avatar-xl p-2 mb-2" src="resources/img/index/avatar/avatar-8.jpg"
                                alt="Padmé Amidala"><span class="text-uppercase text-muted text-sm">Dec 2018</span>
                        </div>
                        <div>
                            <h6 class="mt-2 mb-1">Padmé Amidala</h6>
                            <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i>
                            </div>
                            <p class="text-muted text-sm">One morning, when Gregor Samsa woke from troubled dreams, he
                                found himself transformed in his bed into a horrible vermin. He lay on his armour-like
                                back, and if he lifted his head a little he could see his brown belly, slightly domed
                                and divided by arches into stiff sections </p>
                        </div>
                    </div>
                    <div class="d-flex d-block d-sm-flex review">
                        <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img
                                class="d-block avatar avatar-xl p-2 mb-2" src="resources/img/index/avatar/avatar-2.jpg"
                                alt="Luke Skywalker"><span class="text-uppercase text-muted text-sm">Dec 2018</span>
                        </div>
                        <div>
                            <h6 class="mt-2 mb-1">Luke Skywalker</h6>
                            <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-gray-200"></i>
                            </div>
                            <p class="text-muted text-sm">The bedding was hardly able to cover it and seemed ready to
                                slide off any moment. His many legs, pitifully thin compared with the size of the rest
                                of him, waved about helplessly as he looked. &quot;What's happened to me?&quot; he
                                thought. It wasn't a dream. </p>
                        </div>
                    </div>
                    <div class="d-flex d-block d-sm-flex review">
                        <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img
                                class="d-block avatar avatar-xl p-2 mb-2" src="resources/img/index/avatar/avatar-3.jpg"
                                alt="Princess Leia"><span class="text-uppercase text-muted text-sm">Dec 2018</span>
                        </div>
                        <div>
                            <h6 class="mt-2 mb-1">Princess Leia</h6>
                            <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-gray-200"></i><i
                                    class="fa fa-xs fa-star text-gray-200"></i>
                            </div>
                            <p class="text-muted text-sm">His room, a proper human room although a little too small, lay
                                peacefully between its four familiar walls. A collection of textile samples lay spread
                                out on the table. </p>
                        </div>
                    </div>
                    <div class="d-flex d-block d-sm-flex review">
                        <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img
                                class="d-block avatar avatar-xl p-2 mb-2" src="resources/img/index/avatar/avatar-4.jpg"
                                alt="Jabba Hut"><span class="text-uppercase text-muted text-sm">Dec 2018</span></div>
                        <div>
                            <h6 class="mt-2 mb-1">Jabba Hut</h6>
                            <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i><i
                                    class="fa fa-xs fa-star text-primary"></i>
                            </div>
                            <p class="text-muted text-sm">Samsa was a travelling salesman - and above it there hung a
                                picture that he had recently cut out of an illustrated magazine and housed in a nice,
                                gilded frame. </p>
                        </div>
                    </div>
                    <div class="py-5">
                        <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">Leave a
                            review
                        </button>
                        <div class="collapse mt-4" id="leaveReview">
                            <h5 class="mb-4">Leave a review</h5>
                            <form class="form" id="contact-form" method="get" action="#">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="mb-4">
                                            <label class="form-label" for="name">Your name *</label>
                                            <input class="form-control" type="text" name="name" id="name"
                                                   placeholder="Enter your name" required="required">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="mb-4">
                                            <label class="form-label" for="rating">Your rating *</label>
                                            <select class="form-select focus-shadow-0" name="rating" id="rating">
                                                <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                                                <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                                                <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                                                <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                                                <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label" for="email">Your email *</label>
                                    <input class="form-control" type="email" name="email" id="email"
                                           placeholder="Enter your  email" required="required">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label" for="review">Review text *</label>
                                    <textarea class="form-control" rows="4" name="review" id="review"
                                              placeholder="Enter your review" required="required"></textarea>
                                </div>
                                <button class="btn btn-primary" type="submit">Post review</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="ps-xl-4">
                    <!-- Opening Hours      -->
                    <div class="card border-0 shadow mb-5">
                        <div class="card-header bg-gray-100 py-4 border-0">
                            <div class="d-flex align-items-center justify-content-between">
                                <div>
                                    <h4 class="mb-0">Infomation</h4>
                                </div>
                                <svg class="svg-icon svg-icon svg-icon-light w-3rem h-3rem ms-3 text-muted flex-shrink-0">
                                    <use xlink:href="#wall-clock-1"></use>
                                </svg>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="mb-3 pt-3 px-2">
                                <h6 class="mb-0 fs-sm text-uppercase">Time</h6>
                                <h4 class="mb-2 text-primary">${startDay}~${endDay}</h4>
                                <p class="mb-0">${festivalList.startTime}~${festivalList.endTime}</p>
                            </div>
                            <div class="mb-3 pt-3 px-2">
                                <h6 class="mb-0 fs-sm text-uppercase">Price</h6>
                                <h4 class="mb-2 text-primary">${festivalList.payInfo}</h4>
                                <c:if test="${not empty festivalList.payInfo && !festivalList.payInfo.contains('무료')}">
                                    <p class="pb-2">요금 정보 : ${festivalList.pay}</p>
                                </c:if>
                            </div>
                            <div class="mb-3 pt-3 px-2">
                                <h6 class="mb-0 fs-sm text-uppercase">Age</h6>
                                <h4 class="mb-2 text-primary">${festivalList.age}</h4>
                            </div>
                            <div class="mb-3 pt-3 px-2">
                                <h6 class="mb-0 fs-sm text-uppercase">precaution</h6>
                                <p class="mb-2 text-primary">${festivalList.precautions}</>
                            </div>
                            <div class="mb-3 pt-4 px-2">
                                <div class="d-grid text-center"><a class="btn btn-outline-primary"
                                                                   href="${festivalList.webAddress}"> <i
                                        class="far fa-paper-plane me-2"></i>홈페이지</a></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<div class="py-6 bg-gray-100">
    <div class="container">
        <h5 class="mb-0">Similar places</h5>
        <p class="subtitle text-sm text-primary mb-4">You may also like </p>
        <!-- Slider main container-->
        <div class="swiper-container swiper-container-mx-negative items-slider">
            <!-- Additional required wrapper-->
            <div class="swiper-wrapper pb-5">
                <!-- Slides-->
                <c:forEach items="${recommendList}" var="recommendItem">
                    <div class="swiper-slide h-auto px-2">
                        <!-- venue item-->
                        <div class="w-100 h-100" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                                     style="background-image: url(resources/img/index/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
                                    <a class="tile-link" href="/detail?event_id=${recommendItem.id}"></a>
                                    <div class="card-img-overlay-bottom z-index-20">
                                        <h4 class="text-white text-shadow">${recommendItem.name}</h4>
                                        <h7 class="text-white text-shadow">${recommendItem.place}</h7>
                                        <p class="mb-2 text-xs">
                                            <i class="fa fa-star text-warning"></i>
                                            <i class="fa fa-star text-warning"></i>
                                            <i class="fa fa-star text-warning"></i>
                                            <i class="fa fa-star text-warning"></i>
                                            <i class="fa fa-star text-gray-300"></i>
                                        </p>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <fmt:formatDate value="${recommendItem.startDay}" pattern="yyyy-MM-dd"
                                                    var="formattedStartDay"/>
                                    <fmt:formatDate value="${recommendItem.endDay}" pattern="yyyy-MM-dd"
                                                    var="formattedEndDay"/>
                                    <p class="text-sm mb-0">${formattedStartDay} ~ ${formattedEndDay}</p>
                                    <p class="text-sm text-muted mb-0">${recommendItem.startTime}
                                        ~ ${recommendItem.endTime}</p>
                                    <p class="text-sm text-muted mb-0">${recommendItem.roadAddress}</p>
                                    <p class="text-sm text-muted mb-0">${recommendItem.numberAddress}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <!-- If we need pagination-->
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>

    <jsp:include page="common/footer_main.jsp"/>
    <!-- 카카오맵 -->
    <script>

        var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

        // 중심좌표 기본값, 서울시청으로 해놓았음
        var defaultLat = 37.56681969769621;
        var defaultLng = 126.97865226010863;

        var container = document.getElementById('map');
        var option = {
            center: new kakao.maps.LatLng(defaultLat, defaultLng),
            level: 7
        }

        var map = new kakao.maps.Map(container, option); // 맵 생성

        function closeOverlay() {
            overlay.setMap(null);
        }

        /*
        좌표 값들을 받아서 중심점을 계산
        */
        function calcBounds(positions) {
            var bounds = new kakao.maps.LatLngBounds();

            for (var i = 0; i < positions.length; i++) {
                if (positions[i].La != 0) {
                    bounds.extend(positions[i])
                }
            }
            return bounds
        }

        var bounds = [];

        var overlay;


        var imageSize = new kakao.maps.Size(24, 35);

        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
        console.log(${festivalList.lat})

    </script>

    <c:if test="${not empty festivalList.lat}">

    <script>

        var latlng = new kakao.maps.LatLng(${festivalList.lat}, ${festivalList.lng});

        bounds.push(latlng)

        var marker = new kakao.maps.Marker({
            map: map,
            position: latlng,
            title: "${festivalList.name}",
            image: markerImage
        });

        var setMapSize = calcBounds(bounds);
        console.log(setMapSize);
        if (!setMapSize.isEmpty()) {
            map.setBounds(setMapSize);
        }
    </script>

    </c:if>
    </body>
    </html>