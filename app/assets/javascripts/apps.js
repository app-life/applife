
$(document).ready(function() {
    $('#app_body').on('drop', function(e) { //dropのイベントをハンドル
      e.preventDefault(); //元の動きを止める処理
      f = e.originalEvent.dataTransfer.files[0]; //ドロップされた画像の1件目を取得
      var formData = new FormData();
      formData.append('image', f); // FormDataに画像を追加

      // ajaxで画像をアップロード
      $.ajax({
        url  : "/images",
        type : "POST",
        data : formData,
        dataType    : "json",
        contentType: false,
        processData: false
      })
      .done(function(data, textStatus, jqXHR){
        setImage(data['name'], data['url'])
      })
      .fail(function(jqXHR, textStatus, errorThrown){
        alert("fail");
      });
    });

    // テキストエリアに画像タグを追加する関数
    function setImage(name, url) {
      var textarea = document.querySelector('textarea');
      var sentence = textarea.value;
      var len      = sentence.length;
      var pos      = textarea.selectionStart;
      var before   = sentence.substr(0, pos);
      var word     = '![' + name + '](' + url + ')';
      var after    = sentence.substr(pos, len);

      sentence = before + word + after;

      textarea.value = sentence;
    }
  });
      // 時間表示
      function set2fig(num) {
        // 桁数が1桁だったら先頭に0を加えて2桁に調整する
        var ret;
        if( num < 10 ) { ret = "0" + num; }
        else { ret = num; }
        return ret;
     }
     function showClock2() {
        var nowTime = new Date();
        var nowHour = set2fig( nowTime.getHours() );
        var nowMin  = set2fig( nowTime.getMinutes() );
        var nowSec  = set2fig( nowTime.getSeconds() );
        var msg = "" + nowHour + ":" + nowMin + ":" + nowSec + "";
        document.getElementById("RealtimeClockArea2").innerHTML = msg;
     }
      setInterval('showClock2()',1000);


      // コメント文字数
      function ShowLength(str) {
        document.getElementById("inputlength").innerHTML = str.length + "文字";
     }