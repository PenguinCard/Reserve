$(document).ready(function(){
    var seltd = $('.sun, .tue, .web, .thu, .fri, .sat');

    seltd.on('click',function(index){
        var index = seltd.index(this);

        seltd.removeClass('tdactive');
        seltd.eq(index).addClass('tdactive');

        if(seltd.hasClass('tdactive') == true){
            $('#datebox').show();
            $('.timebox > ul').show();
        }else{
            $('#datebox').hide();
            $('.timebox > ul').hide();
        }
    });

    $('.timebox > ul > li').click(function(){
        $('.seatbox li').show();

        var idx = $('.timebox li').index(this);

        $('.timebox > ul > li').removeClass('activeli');
        $('.timebox > ul > li').eq(idx).addClass('activeli');
    });


});