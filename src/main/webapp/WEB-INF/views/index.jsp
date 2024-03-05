<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@include file="common/header_main.jsp"%>

<!-- 카카오맵 -->
<script type="text/javascript" src = "//dapi.kakao.com/v2/maps/sdk.js?appkey=ec49957b350f1235c905f13271cbcbb8"></script>


<script>
    const text = [
        {'서울특별시':'종로구'},
        {'서울특별시':'중구'},
        {'경기도':'남양주시'},
        {'경기도':'하남시'},
        {'인천광역시':'중구'}
    ];

    for(var i=0; i<text.length;i++){
        let key = Object.keys(text[i])[0];
        console.log(key);
        console.log(text[i][key])
    }
</script>


<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 py-5 p-xl-5">
            <h1 class="text-serif mb-4">${message}</h1>
            <hr class="my-4">

            <form action="#">
                <div class="row">

                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label" for="form_search">키워드</label>
                        <div class="input-label-absolute input-label-absolute-right">
                            <div class="label-absolute"><i class="fa fa-search"></i></div>
                            <input class="form-control pe-4" type="search" name="search" placeholder="키워드" id="form_search">
                        </div>
                    </div>

                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label" for="form_sido">시 / 구</label>

                        <select class="form-select" name="neighbourhood" id="form_sido" data-live-search="true" data-selected-text-format="count &gt; 1" data-none-selected-text="시 / 구">
                            <option value="all">전체</option>
                            <option value="서울특별시">서울특별시</option>
                            <option value="경기도">경기도</option>
                            <option value="인천광역시">인천광역시</option>
                            <option value="대전광역시">대전광역시</option>
                            <option value="대구광역시">대구광역시</option>
                            <option value="울산광역시">울산광역시</option>
                            <option value="광주광역시">광주광역시</option>
                            <option value="부산광역시">부산광역시</option>
                            <option value="전라남도">전라남도</option>
                            <option value="전라북도">전라북도</option>
                            <option value="충청남도">충청남도</option>
                            <option value="충청북도">충청북도</option>
                            <option value="제주특별자치도">제주특별자치도</option>
                            <option value="세종특별자치시">세종특별자치시</option>
                            <option value="경상북도">경상북도</option>
                            <option value="경상남도">경상남도</option>
                            <option value="강원도">강원도</option>
                        </select>
                    </div>
                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label" for="form_sgg">시 / 군 / 구</label>
                        <select class="form-select" name="category" id="form_sgg" data-selected-text-format="count &gt; 1" data-none-selected-text="시 / 군 / 구">
                            <option value="all">전체</option>
                        </select>
                    </div>

                    <script type="text/javascript">
                        $(document).ready(function(){
                            $('#form_sido').change(function(){
                                var selectedSido = $(this).val();
                                $.ajax({
                                    type: 'GET',
                                    url: '/getArea',
                                    data: { sido: selectedSido },
                                    dataType: 'json', // 요청한 데이터가 JSON 형식임을 명시
                                    success: function(data) {
                                        console.log(data);
                                        $('#form_sgg').empty(); // 기존 옵션 제거
                                        $.each(data, function(index, area){
                                            $('#form_sgg').append('<option value="' + area.sigungu + '">' + area.sigungu + '</option>');
                                        });
                                    }
                                });
                            });
                        });
                    </script>

                    <!-- 더 다양한 필더를 활용하려면 이것 활용 -->

                    <div class="col-12 pb-4">
                        <div class="collapse" id="moreFilters">
                            <div class="mb-4">
                                <label class="form-label">행사내용</label>
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="exhibition" name="exhibition">
                                            <label class="form-check-label" for="exhibition">전시회</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="watch" name="watch">
                                            <label class="form-check-label" for="watch">영상프로그램</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="musical" name="musical">
                                            <label class="form-check-label" for="musical">연극, 뮤지컬</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="performance" name="performance">
                                            <label class="form-check-label" for="performance">공연</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="classic" name="classic">
                                            <label class="form-check-label" for="classic">클래식</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="row">
                                <div class="col-xl-6 mb-4">
                                    <label class="form-label">인기도</label>
                                    <div class="text-primary" id="slider-snap"></div>
                                    <div class="nouislider-values">
                                        <div class="min">From ⭐<span id="slider-snap-value-from"></span></div>
                                        <div class="max">To ⭐<span id="slider-snap-value-to"></span></div>
                                    </div>
                                    <input type="hidden" name="pricefrom" id="slider-snap-input-from" value="0">
                                    <input type="hidden" name="priceto" id="slider-snap-input-to" value="5">
                                </div>
                                <div class="col-xl-6 mb-4">
                                    <label class="form-label">요금정보</label>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="charged" name="charged">
                                                <label class="form-check-label" for="charged">유료</label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="free" name="free">
                                                <label class="form-check-label" for="free">무료</label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-6 mb-4">
                        <button class="btn btn-primary" type="submit"> <i class="fas fa-filter me-1"></i>search                </button>
                    </div>



                    <div class="col-6 mb-4 text-end">
                        <button class="btn btn-link btn-collapse ps-0 text-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#moreFilters" aria-expanded="false" aria-controls="moreFilters" data-expanded-text="Less filters" data-collapsed-text="More filters">More filters</button>
                    </div>
                </div>

            </form>
            <hr class="my-4">


            <!-- 검색 결과 창 -->
            <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
                <div class="me-3">
                    <p class="mb-3 mb-md-0"><strong>12</strong> results found</p>
                </div>
                <div>
                    <label class="form-label me-2" for="form_sort">Sort by</label>
                    <select class="form-select" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
                        <option value="popular">인기순</option>
                        <option value="new">최신순</option>
                        <option value="old">가장오래된순</option>
                    </select>
                </div>
            </div>

            <!-- list 생성 창 => 데이터를 가져온 후 내보내게 할 예정 -->

            <div class="row">
                <!-- venue item-->
                <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                    <div class="card h-100 border-0 shadow">
                        <!-- style="background-image:에 이미지 경로 있음 -->
                        <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(resources/img/index/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                            <div class="card-img-overlay-bottom z-index-20">
                                <h5 class="text-white text-shadow">SAC on Screen」 - 연극 보물섬</h5>
                                <h7 class="text-white text-shadow">남동소래아트홀 소래극장</h7>
                                <!-- warning = 노란 별, gray = 회색 별 인기도 계산을 한 후 p태그에 별을 뿌리면 될 듯-->
                                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i>
                                </p>
                            </div>
                            <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                <div class="badge badge-transparent badge-pill px-3 py-2">영상 프로그램</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                <svg class="svg-icon text-white">
                                    <use xlink:href="#heart-1"> </use>
                                </svg></a>
                            </div>
                        </div>
                        <div class="card-body">
                            <!--mb = 글자간 간격-->
                            <p class="text-sm mb-0">2019-11-05 ~ 2019-11-05</p>
                            <p class="text-sm text-muted mb-0"> 오전 9:30 ~ 오후 4:00 </p>
                            <p class="text-sm text-muted mb-0"> 인천광역시 남동구 아암대로1437번길 32(논현동)</p>
                            <!--<p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>-->
                            <p class="text-sm mb-0"><a class="me-1" href="http://www.namdongarts.kr">홈페이지</a></p>
                        </div>
                    </div>
                </div>



            </div>

            <!-- 페이지 목록 체크 -->
            <!-- Pagination -->
            <nav aria-label="Page navigation example">
                <ul class="pagination pagination-template d-flex justify-content-center">
                    <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
                </ul>
            </nav>
        </div>

        <!-- 지도 -->
        <div class="col-lg-6 map-side-lg pe-lg-0">
            <div class="map-full shadow-left">
                <div id="map" style="width: 100%; height: 100%;"></div>
            </div>
        </div>

    </div>
</div>





<!-- Footer-->
<footer class="position-relative z-index-10 d-print-none">
    <!-- Main block - menus, subscribe form-->
    <div class="py-6 bg-gray-200 text-muted">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="fw-bold text-uppercase text-dark mb-3">Directory</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                    <h6 class="text-uppercase text-dark mb-3">Rentals</h6>
                    <ul class="list-unstyled">
                        <li><a class="text-muted" href="index.html">Rooms</a></li>
                        <li><a class="text-muted" href="category-rooms.html">Map on top</a></li>
                        <li><a class="text-muted" href="category-2-rooms.html">Side map</a></li>
                        <li><a class="text-muted" href="category-3-rooms.html">No map</a></li>
                        <li><a class="text-muted" href="detail-rooms.html">Room detail</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
                    <h6 class="text-uppercase text-dark mb-3">Pages</h6>
                    <ul class="list-unstyled">
                        <li><a class="text-muted" href="compare.html">Comparison                                   </a></li>
                        <li><a class="text-muted" href="team.html">Team                                   </a></li>
                        <li><a class="text-muted" href="contact.html">Contact                                   </a></li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>
                    <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
                    <form action="#" id="newsletter-form">
                        <div class="input-group mb-3">
                            <input class="form-control bg-transparent border-dark border-end-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
                            <button class="btn btn-outline-dark border-start-0" type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright section of the footer-->
    <div class="py-4 fw-light bg-gray-800 text-gray-300">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-start">
                    <p class="text-sm mb-md-0">&copy; 2021, Your company.  All rights reserved.</p>
                </div>
                <div class="col-md-6">
                    <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                        <li class="list-inline-item"><img class="w-2rem" src="resources/img/index/visa.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="resources/img/index/mastercard.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="resources/img/index/paypal.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="resources/img/index/western-union.svg" alt="..."></li>
                    </ul>
                </div>
            </div>
        </div>
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



<script>

    var overlay;

    var positions = [
        {
            title: '제주여미지식물원',
            latlng: new kakao.maps.LatLng(33.450701, 126.570667)
        },
        {
            title: '중문색달해변',
            latlng: new kakao.maps.LatLng(33.450701, 126.570777)
        },
        {
            title: '퍼시픽랜드 수조관',
            latlng: new kakao.maps.LatLng(33.244221, 126.417223)
        },
        {
            title: '천재연폭포',
            latlng: new kakao.maps.LatLng(33.250542, 126.416746)
        }
    ];


    // 중심좌표 기본값, 서울시청으로 해놓았음
    var defaultLat = 37.56681969769621;
    var defaultLng = 126.97865226010863;

    var container = document.getElementById('map');
    var option = {
        center : new kakao.maps.LatLng(defaultLat,defaultLng),
        level : 7
    }

    var map = new kakao.maps.Map(container, option); // 맵 생성


    // 마커들이 다 보일수있도록 크기 계산 후 Bounds 계산

    var bounds = calcBounds(positions);
    map.setBounds(bounds);


    kakao.maps.event.addListener(map, 'rightclick', function(mouseEvent) {
        var latlng = mouseEvent.latLng;

        // 클릭한 위치의 위도 얻기
        var lat = latlng.getLat();

        // 클릭한 위치의 경도 얻기
        var lng = latlng.getLng();

        // 위도와 경도 출력
        console.log("클릭한 위치의 위도:", lat);
        console.log("클릭한 위치의 경도:", lng);

        // 팝업 창 등을 이용하여 위도와 경도를 보여줄 수도 있습니다.
        alert("클릭한 위치의 위도: " + lat + "\n클릭한 위치의 경도: " + lng);
    });


    // 마커 이미지, 경로 설정으로 커스텀 마커 생성 가능
    var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

    // 마커 생성 및 마커 클릭 시 이벤트 리스너 (커스텀 인포윈도우 생성) 실행
    for(var i = 0; i < positions.length; i++){

        var imageSize = new kakao.maps.Size(24,35);

        var markerImage = new kakao.maps.MarkerImage(imageSrc,imageSize);

        var marker = new kakao.maps.Marker({
            map : map,
            position: positions[i].latlng,
            title : positions[i].title,
            image : markerImage
        });
        (function(marker, position) {
            kakao.maps.event.addListener(marker, 'click', function() {
                if(overlay){
                    closeOverlay()
                }
                var content = '<div class="wrap">' +
                    '    <div class="info">' +
                    '        <div class="title">' +
                    '     <p class="text-sm text-muted mb-0">'+ position.title +'</p>'  +
                    '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' +
                    '        </div>' +
                    '        <div class="body">' +
                    '            <div class="img">' +
                    '                <img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/thumnail.png" width="73" height="70">' +
                    '           </div>' +
                    '            <div class="desc">' +
                    '                <div class="ellipsis" style="font-weight: bold;">축제 장소</div>' +
                    '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' +
                    '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' +
                    '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' +
                    '            </div>' +
                    '        </div>' +
                    '    </div>' +
                    '</div>';
                overlay = new kakao.maps.CustomOverlay({
                    content: content,
                    map : map,
                    position : marker.getPosition()
                });
                overlay.setMap(map);
            });
        })(marker, positions[i]);
    }


    /*

    필요한 함수 영역

    */

    function closeOverlay() {
        overlay.setMap(null);
    }

    function calculateCenter(bounds) {
        var ne = bounds.getNorthEast(); // 북동쪽 좌표
        var sw = bounds.getSouthWest(); // 남서쪽 좌표
        var centerLat = (ne.lat + sw.lat) / 2; // 위도의 중심점
        var centerLng = (ne.lng + sw.lng) / 2; // 경도의 중심점
        return new kakao.maps.LatLng(centerLat, centerLng);
    }
    function calculateLevel(bounds){
        var map = bounds.map;
        var ne = bounds.getNorthEast(); // 북동쪽 좌표
        var sw = bounds.getSouthWest(); // 남서쪽 좌표
        var scale = Math.pow(2, map.getLevel());
        var width = Math.abs(ne.lng - sw.lng); // 경도 간의 거리
        var height = Math.abs(ne.lat - sw.lat); // 위도 간의 거리
        var maxDimension = Math.max(width, height);
        var level = 1;

        while ((256 * scale) < maxDimension) {
            level++;
            scale *= 2;
        }

        return level;
    }

    /*
     좌표 값들을 받아서 중심점을 계산
    */
    function calcBounds(positions){
        var bounds = new kakao.maps.LatLngBounds();

        for(var i =0; i < positions.length;i++){
            bounds.extend(positions[i].latlng)
        }
        return bounds
    }




</script>


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
        ajax.onload = function(e) {
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
<!-- Swiper Carousel                       -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
<script>var basePath = ''</script>
<!-- Main Theme JS file    -->
<script src="resources/js/theme.js"></script>

<!-- price checkbox -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var chargedCheckbox = document.getElementById('charged');
        var freeCheckbox = document.getElementById('free');

        chargedCheckbox.addEventListener('change', function() {
            if (chargedCheckbox.checked) {
                freeCheckbox.checked = false;
            }
        });

        freeCheckbox.addEventListener('change', function() {
            if (freeCheckbox.checked) {
                chargedCheckbox.checked = false;
            }
        });
    });
</script>

<!-- popular Slider-->
<script src="resources/vendor/nouislider/nouislider.min.js"></script>
<script>
    var snapSlider = document.getElementById('slider-snap');

    noUiSlider.create(snapSlider, {
        start: [ 0, 5 ],
        snap: false,
        connect: true,
        step: 0.1,
        range: {
            'min': 0.0,
            'max': 5
        }
    });
    var snapValues = [
        document.getElementById('slider-snap-value-from'),
        document.getElementById('slider-snap-value-to')
    ];
    var inputValues = [
        document.getElementById('slider-snap-input-from'),
        document.getElementById('slider-snap-input-to')
    ];
    snapSlider.noUiSlider.on('update', function( values, handle ) {
        snapValues[handle].innerHTML = values[handle];
        inputValues[handle].value = values[handle];
    })
</script>
</body>
</html>