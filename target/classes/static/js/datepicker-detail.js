/**
 * Directory – Directory & Listing Bootstrap Theme v. 2.0.1
 * Homepage: https://themes.getbootstrap.com/product/directory-directory-listing-bootstrap-4-theme/
 * Copyright 2021, Bootstrapious - https://bootstrapious.com
 */

"use strict";

$(function () {
    var singleMonth = false;
    if ($(window).width() < 767) {
        singleMonth = true;
    }

    var dateRangeConfig = {
        autoClose: true,
        startDate: new Date(),
        selectForward: true,
        applyBtnClass: "btn btn-primary",
        container: ".datepicker-container",
        inline: true,
        singleMonth: singleMonth,
        showDateFilter: function (time, date) {
            return (
                '<div style="padding:0 5px;">\
                            <span style="font-weight:bold">' +
                date +
                '</span>\
                            <div class="day-subtitle">$' +
                Math.round(Math.random() * 999) +
                "</div>\
                        </div>"
            );
        },
        beforeShowDay: function (t) {
            var valid = !(t.getDay() == 0 || t.getDay() == 6); //disable saturday and sunday
            var _class = "";
            var _tooltip = valid ? "" : "Booked";
            return [valid, _class, _tooltip];
        },
        customOpenAnimation: function (cb) {
            $(this).fadeIn(300, cb);
        },
        customCloseAnimation: function (cb) {
            $(this).fadeOut(300, cb);
        },
    };
    $("#bookingDate")
        .dateRangePicker(dateRangeConfig)
        .bind("datepicker-opened", function () {
            /* This event will be triggered after date range picker open animation */
            //$('.date-picker-wrapper').css('top', 0);
        });
});
