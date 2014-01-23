<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="layout1"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
$("#chatData").focus();
$('<audio id="chatAudio"><source src="widget.ogg" type="audio/ogg"><source src="https://dl.dropboxusercontent.com/u/63968842/notify.mp3" type="audio/mpeg"><source src="widget.wav" type="audio/wav"></audio>').appendTo('body');

$("#trig").on("click",function(){
var a = $("#chatData").val().trim();
if(a.length > 0)
{
$("#chatData").val('');
$("#chatData").focus();
$("<li></li>").html('<img src="http://3.bp.blogspot.com/-ncd0LwPj7vc/UdQHjtv4L2I/AAAAAAAAGFE/f_GFzIRqORE/s83/hemant+verma.png"/><span>'+a+'</span>').appendTo("#chatMessages");
// Scrolling Adjustment 
$("#chat").animate({"scrollTop": $('#chat')[0].scrollHeight}, "slow");
$('#chatAudio')[0].play();
}
});
});
</script>
<title>Ver Sreaming</title>
</head>
<body>
    <div id="centro">
  <div class="body">
   	<object width='640' height='377' id='SampleMediaPlayback' name='SampleMediaPlayback' 
   	type='application/x-shockwave-flash' classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' >
   	
   	<param name='movie' value='10.203.74.189/swfs/SampleMediaPlayback.swf' /> 
   	<param name='quality' value='high' /> 
   	<param name='bgcolor' value='#000000' /> 
   	<param name='allowfullscreen' value='true' /> 
   	
   	<param name='flashvars' value= '&src=rtmp://10.203.74.189/live/livestream&autoHideControlBar=true&streamType=live&autoPlay=true&verbose=true'/>
   	<embed src='http://10.203.74.189/swfs/SampleMediaPlayback.swf' width='640' height='377' id='SampleMediaPlayback' quality='high' bgcolor='#000000' name='SampleMediaPlayback' allowfullscreen='true' pluginspage='http://www.adobe.com/go/getflashplayer' flashvars='&src=rtmp://10.203.74.189/live/livestream&autoHideControlBar=true&streamType=live&autoPlay=true&verbose=true' type='application/x-shockwave-flash'> </embed></object>
  </div>
  
   <div id='chatBox' >

<div id='chat'>
<ul id='chatMessages'>

</ul>
</div>
<input type="text" id="chatData" placeholder="Ingrese su mensaje" />
<input type="button" value="  Enviar  " id="trig" />
</div>
</div>
</body>
</html>