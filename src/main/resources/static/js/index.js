<!-- jinuk's scrpit code -->

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

var currentPage = 1;
var totalPages;
var bounds = [];

var markers = [];

var overlay;

var size = 16;

function result(data) {

    $('#createList').empty(); // 기존 리스트 내용을 비웁니다.

    $('#total').text(data.totalElements);


    var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";


    // 페이징 넘버 생성


    totalPages = Math.ceil(data.totalElements / size);

    // 페이지 생성 함수 호출
    createPagination();


    data.content.forEach(function (item) {

        var imageSize = new kakao.maps.Size(24, 35);
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);


        var formattedStartDay = formatISODate(item.startDay);
        var formattedEndDay = formatISODate(item.endDay);

        var star = '<!-- warning = 노란 별, gray = 회색 별 인기도 계산을 한 후 p태그에 별을 뿌리면 될 듯-->' +
            '<p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i></p>'

        var web = item.webAddress;
        if (web == '정보 없음') {
            web = '/';
        } else if ((!web.includes("https://") || !web.includes("http://"))) {
            web = "https://" + web;
        }

        var listItem = '<div class="col-sm-6 mb-5 hover-animate" data-marker-id="' + item.id + '">' +
            '<div class="card h-100 border-0 shadow">' +
            '<div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(resources/img/index/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">' +
            '<a class="tile-link" href="/detail?event_id=' + item.id + '"></a>' +
            '<div class="card-img-overlay-bottom z-index-20">' +
            '<h5 class="text-white text-shadow">' + item.name + '</h5>' +
            '<h7 class="text-white text-shadow">' + item.place + '</h7>' + star +
            '</div>' +
            '</div>' +
            '<div class="card-body">' +
            '<p class="text-sm mb-0">' + formattedStartDay.date + ' ~ ' + formattedEndDay.date + '</p>' +
            '<p class="text-sm text-muted mb-0">' + item.startTime + ' ~ ' + item.endTime + '</p>' +
            '<p class="text-sm text-muted mb-0">' + item.roadAddress + '</p>' +
            '<p class="text-sm text-muted mb-0">' + item.numberAddress + '</p>' +
            '<p class="text-sm mb-0"><a class="me-1" href="' + web + '">홈페이지</a></p>' +
            '</div>' +
            '</div>' +
            '</div>';
        $('#createList').append(listItem); // 리스트를 페이지에 추가합니다.


        // 카카오 맵 마커, 오버레이 생성

        var latlng = new kakao.maps.LatLng(item.lat, item.lng);

        bounds.push(latlng);

        var marker = new kakao.maps.Marker({
            map: map,
            position: latlng,
            title: item.title,
            image: markerImage
        });
        (function (marker) {
            kakao.maps.event.addListener(marker, 'click', function () {
                if (overlay) {
                    closeOverlay();
                }
                var content = '<div class="wrap">' +
                    '    <div class="info">' +
                    '        <div class="title">' +
                    '     <p class="text-sm text-muted mb-0">' + item.name + '</p>' +
                    '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' +
                    '        </div>' +
                    '        <div class="body">' +
                    '            <div class="img">' +
                    '                <img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/thumnail.png" width="73" height="70">' +
                    '           </div>' +
                    '            <div class="desc">' +
                    '                <div class="ellipsis" style="font-weight: bold;">' + item.place + '</div>' +
                    '                <div class="ellipsis">' + item.roadAddress + '</div>' +
                    '                <div class="jibun ellipsis">' + item.numberAddress + '</div>' +
                    '                <div><a href="' + web + '" target="_blank" class="link">홈페이지</a></div>' +
                    '            </div>' +
                    '        </div>' +
                    '    </div>' +
                    '</div>';
                overlay = new kakao.maps.CustomOverlay({
                    content: content,
                    map: map,
                    position: marker.getPosition()
                });
                overlay.setMap(map);
            });
        })(marker);
        markers.push(marker);
    });
    console.log(markers)
    markers.forEach(function (marker) {
        marker.setMap(map);
    });
    var setMapSize = calcBounds(bounds);
    console.log(setMapSize)
    if (!setMapSize.isEmpty()) {
        map.setBounds(setMapSize);
    }
}


// 페이지를 동적으로 생성하는 함수
function createPagination() {
    var pagingList = $('#pagingList');
    pagingList.empty(); // 기존 내용 지우기

    // 이전 페이지 버튼 추가
    var prevPageItem = $('<li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>');
    prevPageItem.find('a').click(function (event) {
        event.preventDefault(); // 기본 이벤트 동작 방지

        var formData = {
            // Include default filters
            search: $('#form_search').val(),
            sido: $('#form_sido').val(),
            sigungu: $('#form_sgg').val(),
            checkboxes: []
        };

        // If moreFilters is expanded, include its data
        if ($('#moreFilters').hasClass('show')) {
            // Include moreFilters data
            $('input[type=checkbox]').each(function () {
                console.log($(this).is(':checked'));
                if ($(this).is(':checked')) {
                    formData.checkboxes.push($(this).attr('name'));
                }
            });
            console.log(formData.checkboxes)
            formData.pricefrom = $('#slider-snap-input-from').val();
            formData.priceto = $('#slider-snap-input-to').val();
        }

        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(null);
        }

        markers = [];
        bounds = [];

        if (currentPage > 1) {
            currentPage--;
            createPagination(); // 현재 페이지를 기준으로 다시 페이지 생성
        }
        // AJAX 요청 보내기
        $.ajax({
            type: 'GET',
            url: '/getList?page=' + (currentPage - 1) + '&size=' + size,
            data: formData,
            dataType: 'json',
            success: function (data) {
                result(data)
            }
        });
    });

    pagingList.append(prevPageItem);

    // 현재 페이지를 중심으로 일정 범위 내의 페이지 버튼만 표시
    var startPage = Math.max(1, currentPage - 4); // 현재 페이지 기준으로 시작 페이지 계산
    var endPage = Math.min(totalPages, startPage + 9); // 시작 페이지를 기준으로 끝 페이지 계산

    // 각 페이지 버튼 추가
    for (var i = startPage; i <= endPage; i++) {
        var pageItem = $('<li class="page-item"><a class="page-link" href="#">' + i + '</a></li>');
        if (i === currentPage) {
            pageItem.addClass('active');
        }
        pageItem.find('a').click(function (event) {
            event.preventDefault(); // 기본 이벤트 동작 방지

            var formData = {
                // Include default filters
                search: $('#form_search').val(),
                sido: $('#form_sido').val(),
                sigungu: $('#form_sgg').val(),
                checkboxes: []
            };

            // If moreFilters is expanded, include its data
            if ($('#moreFilters').hasClass('show')) {
                // Include moreFilters data
                $('input[type=checkbox]').each(function () {
                    console.log($(this).is(':checked'));
                    if ($(this).is(':checked')) {
                        formData.checkboxes.push($(this).attr('name'));
                    }
                });
                console.log(formData.checkboxes)
                formData.pricefrom = $('#slider-snap-input-from').val();
                formData.priceto = $('#slider-snap-input-to').val();
            }

            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(null);
            }

            markers = [];
            bounds = [];


            var clickedPage = parseInt($(this).text()); // 클릭된 페이지 번호 가져오기
            if (clickedPage !== currentPage) {
                currentPage = clickedPage; // 현재 페이지 업데이트

                // AJAX 요청 보내기
                $.ajax({
                    type: 'GET',
                    url: '/getList?page=' + (currentPage - 1) + '&size=' + size,
                    data: formData,
                    dataType: 'json',
                    success: function (data) {
                        result(data)
                    }
                });
            }
        });
        pagingList.append(pageItem);
    }


    // 다음 페이지 버튼 추가
    var nextPageItem = $('<li class="page-item"><a class="page-link"><i class="fa fa-angle-right"></i></a></li>');
    nextPageItem.find('a').click(function (event) {
        event.preventDefault(); // 기본 이벤트 동작 방지

        var formData = {
            // Include default filters
            search: $('#form_search').val(),
            sido: $('#form_sido').val(),
            sigungu: $('#form_sgg').val(),
            checkboxes: []
        };

        // If moreFilters is expanded, include its data
        if ($('#moreFilters').hasClass('show')) {
            // Include moreFilters data
            $('input[type=checkbox]').each(function () {
                console.log($(this).is(':checked'));
                if ($(this).is(':checked')) {
                    formData.checkboxes.push($(this).attr('name'));
                }
            });
            console.log(formData.checkboxes)
            formData.pricefrom = $('#slider-snap-input-from').val();
            formData.priceto = $('#slider-snap-input-to').val();
        }

        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(null);
        }

        markers = [];
        bounds = [];


        if (currentPage < totalPages) {
            currentPage++;
            createPagination(); // 현재 페이지를 기준으로 다시 페이지 생성
        }

        // AJAX 요청 보내기
        $.ajax({
            type: 'GET',
            url: '/getList?page=' + (currentPage - 1) + '&size=' + size,
            data: formData,
            dataType: 'json',
            success: function (data) {
                result(data)
            }
        });
    });
    pagingList.append(nextPageItem);
}


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


$(document).ready(function () {

    // sido change 할 때
    $('#form_sido').change(function () {

        var selectedSido = $(this).val();
        // 로컬 스토리지에 저장

        $.ajax({
            type: 'GET',
            url: '/getArea',
            data: {sido: selectedSido},
            dataType: 'json', // 요청한 데이터가 JSON 형식임을 명시
            success: function (data) {
                console.log(data);
                $('#form_sgg').empty(); // 기존 옵션 제거
                $('#form_sgg').append('<option value="all">전체</option>');


                $.each(data, function (index, area) {
                    if (area.sigungu != null) {
                        $('#form_sgg').append('<option value="' + area.sigungu + '">' + area.sigungu + '</option>');
                    }
                });

            }
        });
    });


    $('#submitBtn').click(function (event) {
        event.preventDefault(); // Form submission prevented to control AJAX request

        // Initialize data object
        var formData = {
            // Include default filters
            search: $('#form_search').val(),
            sido: $('#form_sido').val(),
            sigungu: $('#form_sgg').val(),
            checkboxes: []
        };

        // If moreFilters is expanded, include its data
        if ($('#moreFilters').hasClass('show')) {
            // Include moreFilters data
            $('input[type=checkbox]').each(function () {
                console.log($(this).is(':checked'));
                if ($(this).is(':checked')) {
                    formData.checkboxes.push($(this).attr('name'));
                }
            });
            console.log(formData.checkboxes)
            formData.pricefrom = $('#slider-snap-input-from').val();
            formData.priceto = $('#slider-snap-input-to').val();
        }

        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(null);
        }

        markers = [];
        bounds = [];

        // AJAX request
        $.ajax({
            type: 'GET',
            url: '/getList?page=' + (currentPage - 1) + '&size=' + size,
            data: formData,
            dataType: 'json', // 요청한 데이터가 JSON 형식임을 명시
            success: function (data) {
                result(data)
            }
        });
    });

});
