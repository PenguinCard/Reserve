$(document).ready(function(){
   var seat = $('td').not('td.seatNum');
   var currentindex;
   var clearbtn = $('#seatclear');
   var Num = $('.showSeatdata');
   var clicks = 0;
   var selSeat = $('.notsel');
   var grade="";
   var rowno="";


   seat.on('click',function(index){
       var index = seat.index(this);
       var param={
    		   seatid: index+1
       }
       currentindex = index;
       clicks++;       

          // 좌석 선택 색 변화
        if(seat.eq(index).hasClass('coloraddClass') == true){
            seat.eq(index).removeClass('coloraddClass');
            $('.showSeatdata li').remove();
            clicks = 0;          
        }else{
            if(clicks == 1){
            	$.ajax({
                	   url: "searchSeatInfo",
                	   type: "POST",
                       data: JSON.stringify(param), 
                       contentType: "application/json; charset=utf-8;",
                       dataType: "json",
                       success: function(data){
                      	 grade=data.grade;
                      	 rowno=data.rowno;
                      	 seatdata(grade, rowno);                      	 
                       }  	
                   });     
                seat.eq(index).addClass('coloraddClass');                       
            }else{
                alert('1인 1매만 구매 가능합니다.');            
            }
        } 
   });


   clearbtn.on('click',function(e){
       e.preventDefault();
       $('.showSeatdata li').remove();
   });


   function seatdata(grade, rowno){
        Num.show().css('width','100%').append('<li>'+'<p>'+grade+'</p>'+'<p>'+rowno+'</p>'+'</li>');
        currentindex = idx;

        if(Num.find('li').length >= 5){
            Num.addClass('scroll')
        }else{
            Num.removeClass('scroll');
        }

   }

  

   selSeat.on('click',function(){

    var i = selSeat.index(this);
      alert('이미 선택 된 좌석입니다.');
      selSeat.removeClass('coloraddClass');
      $('.showSeatdata li').remove(i);
      currentindex = i;
      if(seat.hasClass('coloraddClass') == true){
          clicks = 1;
      }else{
        clicks = 0;
      }
   });

  
});