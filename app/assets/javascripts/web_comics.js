require('slick-carousel-browserify');

$(document).ready(function() {
    console.log('document ready');
    $('.web-comic').slick({
        infinite: false
    });
});