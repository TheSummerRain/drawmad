
$(document).ready(function(){
	bar();


	/*mapInit();
    mapPlaying();
    mapPlaying2();*/
    mapTransitionPlaying();
    mapTransitionPlaying2();
});

function bar(){
	$('.topbar-right-user').bind('mouseover', function(){
		$('.topbar-right-user ul ').css('display','block');
	})
	$('.topbar-right-user').bind('mouseout', function(){
		$('.topbar-right-user ul ').css('display','none');
	})

	$('.huodong').bind('mouseover', function(){
		$('.topbar-left .huodong>ul').css('display','block');
	})
	$('.huodong').bind('mouseout', function(){
		$('.topbar-left .huodong>ul').css('display','none');
	})
}

function mapTransitionPlaying(){
	var autoPlay = function(){
		$('#arrow-right').click();
	};
	$('#arrow-right').bind('click', function(){
		var indexx = ($('.map-rotate-ul .playing').index() + 1 ) %3;
		mapTransitionPackagePlaying(indexx);

		clearTimeout(cce);
		cce = setTimeout(autoPlay,5000);
	});
	var cce = setTimeout(autoPlay, 5000);
}

function mapTransitionPackagePlaying(indexx){
	$(this).stop(true, true);
	$('.map-rotate-ul .playing').animate({
		'opacity' : 0
	}, 1000, function(){
		$('.map-rotate-ul .playing').removeClass('playing');//.css('z-index', 0)
	});

	$('.map-rotate-ul li').eq(indexx).animate({
		'opacity' : 1
	}, 1000, function(){
		$('.map-rotate-ul li').eq(indexx).addClass('playing')
	})
}

function mapTransitionPlaying2(){
	$('#arrow-left').bind('click', function(){
		var indexx = ($('.map-rotate-ul .playing').index() - 1 ) %3;
		mapTransitionPackagePlaying(indexx);
	});
}

function mapInit(){
	$('.map-rotate-ul li').each(function(index, value){
		$(this).css({
			'left': 1000 * index
		});
	})
}

function mapPlaying(){

	var autoPlay = function(){
		$('#arrow-right').click();
	}
	
	$('#arrow-right').bind('click', function(){
		var indexx = ($('.map-rotate-ul .playing').index()+1) % 3;
		$('.map-rotate-ul li').each(function(index, value){
			
			$(this).stop(true, true);
			if(indexx == 0){
				$(this).removeClass('playing').animate({
					'left': $(this).position().left+1000 * ($('.map-rotate-ul li').length -1)
				}, 1000);
			}else{
				$(this).removeClass('playing').animate({
					'left': $(this).position().left-1000
				}, 1000);
			}
		});
		
		$('.map-rotate-ul li').eq(indexx).addClass('playing');
		clearTimeout(cce);
		cce = setTimeout(autoPlay,5000);
	})

	var cce = setTimeout(autoPlay,5000);
	//cce = window.setTimeout("mapAnimate()",2000);
	//clearTimeout( cce );//终止触发的setTimeout防止重复执行
}

function mapPlaying2(){
	$('#arrow-left').bind('click', function(){
		var indexx = ($('.map-rotate-ul .playing').index()) % 3;
		$('.map-rotate-ul li').each(function(index, value){
			
			$(this).stop(true, true);
			if(indexx == 0){
				$(this).removeClass('playing').animate({
					'left': $(this).position().left-1000 * ($('.map-rotate-ul li').length -1)
				}, 1000);
			}else{
				$(this).removeClass('playing').animate({
					'left': $(this).position().left+1000
				}, 1000);
			}
		});
		
		$('.map-rotate-ul li').eq(indexx-1).addClass('playing');
		clearTimeout(cce);
		cce = setTimeout(autoPlay,3000);
	})
}


