$(document).ready(function(){

     
    
    // 스크롤 이벤트

     var topbtn = $('.topscroll');
     var fixhead = $('header');

    //  사이드메뉴
     var menubtn = $('#menubar');
     var allMenu = $('aside');
     var close = $('.closebtn, .allMenu');


     //  전체 메뉴 이벤트

     menubtn.on('click',function(){
         if(allMenu.css('left', 0) == false){
             allMenu.css('left', 0);
         }else{
             close.on('click', function(){
                 allMenu.css('left', '-300px');
             });
         }
     });
    
    // 스크롤이 내려가면 탑스크롤 버튼 오픈
 
     $(window).scroll(function(){
         if($(this).scrollTop() > 500){
             topbtn.show();
             fixhead.addClass('fixactive');
             $('#headTop').css('display','block');
             
         }else{
             topbtn.hide();
             fixhead.removeClass('fixactive');
             $('#headTop').css('display','none');
         }
     });


    //  탑 스크롤 버튼
 
     topbtn.on('click', function(){
         $('html, body').animate({
             scrollTop : 0}, 400);
             return false;
     });
  
});