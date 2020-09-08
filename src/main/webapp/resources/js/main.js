$(document).ready(function(){
	var frame = $('.slideform'),
		slides = frame.find('.slides'),
		slide = slides.find('.slide'),
		slidecnt = slide.length,
		indicator = $('.slideThumb-list'),
		currentIndex = 0,
		timer,
		interval = 3500,
		prevbtn = $('#slideprev'),
		nextbtn = $('#slidenext');


		// 슬라이드 이미지 active
		function goToSlide(index){
			slide.removeClass('slideactive');
			slide.eq(index).addClass('slideactive');
			currentIndex = index;

			updateNav();

		}



		// 썸네일
		function updateNav(){
			
			indicator.find('li').removeClass('active');
			indicator.find('li').eq(currentIndex).addClass('active');
		}



		// 썸네일 클릭 이벤트
		indicator.find('li').on('click',function(e){
			e.preventDefault();

			var idx = $(this).index();
			goToSlide(idx);
		});

		updateNav();



		// 사이드 버튼 클릭 무한 루프
		
		prevbtn.click(function(){
			var prevIndex = (currentIndex -1) % slidecnt;
			goToSlide(prevIndex);
		});
		nextbtn.on('click',function(){
			var nextIndex = (currentIndex +1) % slidecnt;
			goToSlide(nextIndex);
		}); 
		

		// 자동 슬라이드 무한 루프
		function startTimer(){
			timer = setInterval(function(){
				var nextIndex = (currentIndex +1) % slidecnt;
				goToSlide(nextIndex);
			},interval);
		}

		startTimer();


		// 슬라이드 멈춤 
		function stopTimer(){
			clearInterval(timer);
		}


		// 마우스 호버시 슬라이드 시작, 멈춤
		frame.hover(function(){
			stopTimer();
		}, function(){
			startTimer();
		});




		// 랭킹 탭

		var rdCheck = $('.rankingchk');
		var chkText = rdCheck.find('li');
		var rankings = $('.rankings');
		var rankbox = rankings.find('ul');
		var rankcurrent = 0;

		

		function activerankimg(idx){
			rankbox.hide();
			rankbox.eq(rankcurrent).show();
			rankcurrent = idx;
			activerank();
		}

		function activerank(){
			chkText.find('input').prop('checked',false);
			chkText.eq(rankcurrent).find('input').prop('checked',true);
		}




	chkText.on('click', function(){
		var index = chkText.index(this);
		
		activerankimg(index);
	});
});


