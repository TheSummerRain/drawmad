document.onkeyup = keyUp;

  $(function(){
    banDir2();
    videoShow();
    videoClose();
  });

  function videoShow(){
    $('.content .container').on('click', 'img', function(){
        $('.markContent').css('display', 'block');
        $('#markVideo').css({
          'z-index': 10,
          'opacity': 1
        });
        var parentData = $(this).parent().data();
        var url = 'http://service.weibo.com/share/share.php?url='+parentData.server+'&amp;title=这期Moewolf简直太赞了！忍不住分享了~'+parentData.title+'（@drawmad）&amp;pic='+parentData.img+'';

        $('#markTitle>span').text(parentData.title);
        $('#markTitle>.author').text(parentData.author);
        $('#markTitle>.s').attr('href', parentData.videourl);
        $('#markTitle>.d').attr('href', url);


        SewisePlayer.toPlay(parentData.videocode, parentData.title, 0, false);
    })
  }

  function videoClose(){
    $('.markContent').bind('click', function(){
      $(this).css('display', 'none');
      $('#markVideo').css({
          'z-index': -999,
          'opacity': 0
      });
      SewisePlayer.doStop();
    })
  }

    function playPause(){
        SewisePlayer.doPause();
    }
    function seekTo(){
        SewisePlayer.doSeek(5);
    }
    function playStop(){
        SewisePlayer.doStop();
    }

    function keyUp(e) {
            var currKey=0,e=e||event;
            currKey=e.keyCode||e.which||e.charCode;
            //var keyName = String.fromCharCode(currKey);
            if(currKey == 27){
                $('.markContent').click();
            }
            //alert("按键码: " + currKey +" 字符: " + keyName);
    }

  //id 进行判断
  function banDir2(){
    var dateNow = $('#dateNow').val();
    var dateLeft = $('#dateLeft').val();
    var dateRight = $('#dateRight').val();

    var url="http://"+window.location.host+"/index.php/Moewolf?date=";
    $('.date-last').attr('href', url+dateLeft);
    $('.date-next').attr('href', url+dateRight);
  }