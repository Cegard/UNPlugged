<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<meta name="layout" content="layout1"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
   	<object width='640' height='377' id='SampleMediaPlayback' name='SampleMediaPlayback' 
   	type='application/x-shockwave-flash' classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' >
   	
   	<param name='movie' value='localhost/swfs/SampleMediaPlayback.swf' /> 
   	<param name='quality' value='high' /> 
   	<param name='bgcolor' value='#000000' /> 
   	<param name='allowfullscreen' value='true' /> 
   	
   	<param name='flashvars' value= '&src=rtmp://localhost/live/livestream&autoHideControlBar=true&streamType=live&autoPlay=true&verbose=true'/>
   	<embed src='http://localhost/swfs/SampleMediaPlayback.swf' width='640' height='377' id='SampleMediaPlayback' quality='high' bgcolor='#000000' name='SampleMediaPlayback' allowfullscreen='true' pluginspage='http://www.adobe.com/go/getflashplayer' flashvars='&src=rtmp://localhost/live/livestream&autoHideControlBar=true&streamType=live&autoPlay=true&verbose=true' type='application/x-shockwave-flash'> </embed></object>
  </div>
</body>
</html>