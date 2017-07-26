<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>青鱼定制</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="css/normalize.css">
	  <link rel="stylesheet" href="css/ideal-image-slider.css">
   	<link rel="stylesheet" href="css/default.css">
     <script src="js/ideal-image-slider.js"></script>
     <script src="js/getDate.js"></script>
      
     <link rel="stylesheet" href="css/liugao1.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
   
  </head>
 <body onload="startTime()" style="margin-left:8%;
            margin-right:8%;
            margin-top:5px;
           ">
    <div>
     <div> 
       <nav class="navbar navbar-default navcolor">
           <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
               
                 <img src="img/qy1.jpg">&nbsp;&nbsp;&nbsp;&nbsp;
             </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
             <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-top:30px">
      <ul class="nav navbar-nav">
        <li class="li"><a href="#"><font size="4px" face="幼圆" color="white">首页</font> <span class="sr-only">(current)</span></a></li>
        <li class="li"><a href="http://mp.weixin.qq.com/s?__biz=MzI2NTEwMTYyOA==&mid=582235685&idx=1&sn=980daf2646c1a1aec67482d2611641db&mpshare=1&scene=23&srcid=0715h1pIXb6JtfpWkeCmPWu4#rd"><font size="4px" face="幼圆" color="white">关于我们</font></a></li>
        <li class="dropdown li">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font size="4px" face="幼圆" color="white">青鱼宝贝</font><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="ttdz">团体定制</a></li>
            <li><a href="sgdz">手工制造</a></li>
            <li><a href="xyjn">校园纪念</a></li>
           
          </ul>
        </li>
        <li class="li"><a href="lianxi"><font size="4px" face="幼圆" color="white">联系我们</font></a></li>
        <li class="dropdown li">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font size="4px" face="幼圆" color="white">${sessionScope.user.username}</font><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="cart">购物车</a></li>
            <li><a href="collect">收藏夹</a></li>
            <li><a href="order">我的订单</a></li>
             <li><a href="main">注销当前用户</a></li>
            
          </ul>
        </li>
        <li id="txt" style="padding-left:40px;padding-top:15px"></li>
      
      </ul>
      
     
    </div><!-- /.navbar-collapse -->
   </div><!-- /.container-fluid -->
 </nav>
</div>
    <div id="slider" style="margin-top:2px,0px,0px,0px">      
		<img src="img/1@2x.png" data-src-2x="img/1@2x.png" alt="Slide 1" />
		<img data-src="img/2@2x.png" data-src-2x="img/2@2x.png" src="" alt="Slide 2" />
		<img data-src="img/3@2x.png" data-src-2x="img/3@2x.png" src="" alt="Slide 3" />
	</div>
	<script src="js/slider.js"></script>
	
   <div style="float:left;">
        <div class="row" style="margin-left:6%;width:540px;margin-top:10px;" >
              <div class="thumbnail" style="height:330px;">
                 <a href="http://mp.weixin.qq.com/s?__biz=MzI2NTEwMTYyOA==&mid=417007731&idx=1&sn=12ed859020a27332df31e2ea71247242&chksm=778d202040faa936c581ca205f9696d3407cfc67dbe07ccb19551fa656d068bd02174a24b63d&mpshare=1&scene=23&srcid=07155SZPqfWv9dUgJ1DUyZdo#rd"><img  src="img/qy6.png" alt="picture"></a>
                  <div class="caption">
     
                      <p>为您提供免费设计 </p>                   
                  </div>
                </div> 
          </div>   
    </div>
    <div style="float:left;">
        <div class="row" style="margin-left:6%;width:540px;margin-top:10px;" >
              <div class="thumbnail" style="height:330px;">
                 <a href="http://mp.weixin.qq.com/s?__biz=MzI2NTEwMTYyOA==&mid=465292286&idx=1&sn=ce86da28dc8a91a70b1475491ca60054&chksm=74ede3ad439a6abbe1bcd61126e5c316a2fb41d5ffaac954f0348865bd30c2eca5ad6e117b86&mpshare=1&scene=23&srcid=0715RgphEEexhswOwV1hjgmR#rd"><img  src="img/qy7.png" alt="picture"></a>
                  <div class="caption">
 					<p>新潮流，我主张</p>                    
                  </div>
                </div> 
          </div>   
    </div>
    <div style="float:left;">
        <div class="row" style="margin-left:2%;width:350px;margin-top:10px;" >
              <div class="thumbnail" style="height:280px;background-color:gray;">
                 <a href="firstdetail"><img  src="img/qy8.JPG" alt="picture"></a>
                   <div class="caption">
                      <h3>手工定制<span><font color="red">￥85</font></span></h3>
                      <p>纯手工制作，根据您的要求提供个性化定制 </p>                   
                  </div>
                </div> 
          </div>   
    </div>
     <div style="float:left;margin-left:2%;">
        <div class="row" style="margin-left:30px;width:350px;margin-top:10px;" >
              <div class="thumbnail" style="height:280px;background-color:gray;">
                 <a href="seconddetail"><img  src="img/qy_T.JPG" alt="picture"></a>
                   <div class="caption">
                      <h3>团体服饰<span><font color="red">￥36</font></span></h3>
                      <p>可个性化设计定制logo，衣服款式多样</p>
                  </div>
                </div> 
          </div>   
    </div>
     <div style="float:left;margin-left:2%;">
        <div class="row" style="margin-left:30px;width:350px;margin-top:10px;" >
              <div class="thumbnail" style="height:280px;background-color:gray;">
                 <a href="thirddetail"><img  src="img/444.GIF" alt="picture"></a>
                   <div class="caption">
                      <h3>矿大版文件袋<span><font color="red">￥18</font></span></h3>
                      <p>
大气有质感，一个颜色，库存不多
桌子上那些噼里啪啦的资料是该整整了</p>                  
                  </div>
                </div> 
          </div>   
    </div>
   </div>

    <div style="float:left;margin-left:2%;">
        <div class="row" style="margin-left:30px;width:230px;margin-top:10px;" >
              <div class="thumbnail" style="height:280px;background-color:gray;">
                 <a href="seconddetail"><img  src="img/qy_T.JPG" alt="picture"></a>
                   <div class="caption">
                     <h3>团体服饰<span><font color="red">￥36</font></span></h3>
                      <p>可个性化设计定制logo，衣服款式多样</p></div>
                </div> 
          </div>   </div>
          <div style="float:left;margin-left:2%;">
        <div class="row" style="margin-left:30px;width:230px;margin-top:10px;" >
              <div class="thumbnail" style="height:280px;background-color:gray;">
                 <a href="seconddetail"><img  src="img/qy_T.JPG" alt="picture"></a>
                   <div class="caption">
                      <h3>团体服饰<span><font color="red">￥36</font></span></h3>
                      <p>可个性化设计定制logo，衣服款式多样</p></div>
                </div> 
          </div>  </div> 
          <div style="float:left;margin-left:2%;">
        <div class="row" style="margin-left:30px;width:230px;margin-top:10px;" >
              <div class="thumbnail" style="height:280px;background-color:gray;">
                 <a href="seconddetail"><img  src="img/qy_T.JPG" alt="picture"></a>
                   <div class="caption">
                      <h3>团体服饰<span><font color="red">￥36</font></span></h3>
                      <p>可个性化设计定制logo，衣服款式多样</p></div>
                </div> </div>
          </div>   
          <div style="float:left;margin-left:2%;">
        <div class="row" style="margin-left:30px;width:230px;margin-top:10px;" >
              <div class="thumbnail" style="height:280px;background-color:gray;">
                 <a href="seconddetail"><img  src="img/qy_T.JPG" alt="picture"></a>
                   <div class="caption">
                      <h3>团体服饰<span><font color="red">￥36</font></span></h3>
                      <p>可个性化设计定制logo，衣服款式多样</p></div>
                </div> 
          </div>   </div>
    <br>
    <div class="pull-right" style="margin-right:-19%;">
      <img src="img/qy3.png">
      <p style="text-align:center;">版权所有：杭州哈邦文化创意有限公司。联系地址：中国矿业大学南湖校区。联系电话：15005200697<a href="http://mp.weixin.qq.com/s?__biz=MzI2NTEwMTYyOA==&mid=582235685&idx=1&sn=980daf2646c1a1aec67482d2611641db&mpshare=1&scene=23&srcid=0715h1pIXb6JtfpWkeCmPWu4#rd">关于我们</a></p>
      </div>
      
   </body>
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>