<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%@include file="common/header_main.jsp" %>


<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 py-5 p-xl-5">
            <h1 class="mb-0">GOGO - Search</h1>
            <hr class="my-4">

            <form id="myForm">
                <div class="row">

                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label" for="form_search">키워드</label>
                        <div class="input-label-absolute input-label-absolute-right">
                            <div class="label-absolute"><i class="fa fa-search"></i></div>
                            <input class="form-control pe-4" type="search" name="search" placeholder="키워드"
                                   id="form_search">
                        </div>
                    </div>

                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label" for="form_sido">시 / 구</label>

                        <select class="form-select" name="neighbourhood" id="form_sido" data-live-search="true"
                                data-selected-text-format="count &gt; 1" data-none-selected-text="시 / 구">
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
                        <select class="form-select" name="category" id="form_sgg"
                                data-selected-text-format="count &gt; 1" data-none-selected-text="시 / 군 / 구">
                            <option value="all">전체</option>
                        </select>
                    </div>


                    <!-- 더 다양한 필더를 활용하려면 이것 활용 -->

                    <div class="col-12 pb-4">
                        <div class="collapse" id="moreFilters">
                            <div class="mb-4">
                                <label class="form-label">행사내용</label>
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="exhibition" name="전시회">
                                            <label class="form-check-label" for="exhibition">전시회</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="watch" name="영상프로그램">
                                            <label class="form-check-label" for="watch">영상프로그램</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="musical" name="뮤지컬">
                                            <label class="form-check-label" for="musical">뮤지컬</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="performance" name="공연">
                                            <label class="form-check-label" for="performance">공연</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="play" name="연극">
                                            <label class="form-check-label" for="play">연극</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="classic" name="클래식">
                                            <label class="form-check-label" for="classic">클래식</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="comic" name="코미디">
                                            <label class="form-check-label" for="comic">코미디</label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="movie" name="영화">
                                            <label class="form-check-label" for="movie">영화</label>
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
                                                <input class="form-check-input" type="checkbox" id="charged" name="유료">
                                                <label class="form-check-label" for="charged">유료</label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="free" name="무료">
                                                <label class="form-check-label" for="free">무료</label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-6 mb-4">
                        <button id="submitBtn" class="btn btn-primary" type="submit"><i class="fas fa-filter me-1"></i>search
                        </button>
                    </div>


                    <div class="col-6 mb-4 text-end">
                        <button class="btn btn-link btn-collapse ps-0 text-secondary" type="button"
                                data-bs-toggle="collapse" data-bs-target="#moreFilters" aria-expanded="false"
                                aria-controls="moreFilters" data-expanded-text="Less filters"
                                data-collapsed-text="More filters">More filters
                        </button>
                    </div>
                </div>

            </form>


            <hr class="my-4">


            <!-- 검색 결과 창 -->
            <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
                <div class="me-3">
                    <p class="mb-3 mb-md-0"><strong id="total">0</strong> results found</p>
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

            <div id="createList" class="row">

                <!--
                                 venue item
                                <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                                    <div class="card h-100 border-0 shadow">

                                        <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(resources/img/index/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                                            <div class="card-img-overlay-bottom z-index-20">
                                                <h5 class="text-white text-shadow">SAC on Screen」 - 연극 보물섬</h5>
                                                <h7 class="text-white text-shadow">남동소래아트홀 소래극장</h7>

                                                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i></p>
                                            </div>
                                            <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                                                <div class="badge badge-transparent badge-pill px-3 py-2">영상 프로그램</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                                <svg class="svg-icon text-white">
                                                    <use xlink:href="#heart-1"> </use>
                                                </svg></a>
                                            </div>
                                        </div>
                                        <div class="card-body">

                                            <p class="text-sm mb-0">2019-11-05 ~ 2019-11-05</p>
                                            <p class="text-sm text-muted mb-0"> 오전 9:30 ~ 오후 4:00 </p>
                                            <p class="text-sm text-muted mb-0"> 인천광역시 남동구 아암대로1437번길 32(논현동)</p>
                                            <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                                            <p class="text-sm mb-0"><a class="me-1" href="http://www.namdongarts.kr">홈페이지</a></p>
                                        </div>
                                    </div>
                                </div>
                -->
            </div>

            <!-- 페이지 목록 체크 -->
            <!-- Pagination -->
            <nav aria-label="Page navigation example">
                <ul id="pagingList" class="pagination pagination-template d-flex justify-content-center">
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

<jsp:include page="common/footer_main.jsp"/>


<!-- price checkbox -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var chargedCheckbox = document.getElementById('charged');
        var freeCheckbox = document.getElementById('free');

        chargedCheckbox.addEventListener('change', function () {
            if (chargedCheckbox.checked) {
                freeCheckbox.checked = false;
            }
        });

        freeCheckbox.addEventListener('change', function () {
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
        start: [0, 5],
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
    snapSlider.noUiSlider.on('update', function (values, handle) {
        snapValues[handle].innerHTML = values[handle];
        inputValues[handle].value = values[handle];
    })
</script>

<script type="text/javascript" src="resources/js/index.js"></script>

</body>
</html>