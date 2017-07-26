<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>我的购物车</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
      <link href="css/biaoge.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 
  </head>
  <body style="background-color:gray">
 <div>
     <div style="width:60%;margin:auto auto;">
         <h1>${sessionScope.user.username}：购物车.<a class="btn btn-primary" href="mainshop" role="button">继续购物</a>
            <a class="btn btn-danger" href="clear" role="button">清空购物车</a></h1>
         <br>
         <table class="table table-hover">
                
                <tr>
			<th class="thtd">宝贝图片</th>
			<th class="thtd">编号</th>
			<th class="thtd">宝贝名称</th>
			<th class="thtd">宝贝价格</th>
			<th class="thtd">订购数量</th>
			<th class="thtd"><font color="blue">购买</font></th>
			<th class="thtd"><font color="black">减1</font></th>
			<th class="thtd"><font color="red">删除</font></th>
		    </tr>
		    
           <c:forEach items="${requestScope.cart_list }" var="cart">
		   <c:forEach items="${cart.book }" var="book">
			<tr>
				<td><img src="img/${book.bookimage}"></td>
				<td>${book.booknomber}</td>
				<td>${book.bookname}</td>
				<td>${book.bookprice}</td>
				<td>${cart.count }</td>
			<td>
			<a class="btn btn-info" href="saveorder?book_id=${book.id}" role="button">立即购买</a>
		    </td>
		    <td>
			<a class="btn btn-warning" href="reduce?book_id=${book.id}" role="button">减1</a>
		    </td>
		    <td>
			<a class="btn btn-danger" href="remove?book_id=${book.id}" role="button">删除所有</a>
		    </td>
		  </tr>
		</c:forEach>
		
		</c:forEach>		
        </table>
     </div>
 </div>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>
    <div class="pull-right" style="margin-right:2%;margin-top:100px">
      <img src="img/qy3.png">
      <p style="text-align:center;">版权所有：杭州哈邦文化创意有限公司。联系地址：中国矿业大学南湖校区。联系电话：15005200697<a href="http://mp.weixin.qq.com/s?__biz=MzI2NTEwMTYyOA==&mid=582235685&idx=1&sn=980daf2646c1a1aec67482d2611641db&mpshare=1&scene=23&srcid=0715h1pIXb6JtfpWkeCmPWu4#rd">关于我们</a></p>
      </div>
  </body>
  
</html>