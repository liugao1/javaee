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
    <title>校园纪念</title>

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
     <div style="width:90%;margin:auto auto;">
         <h1>校园纪念</h1>
         <br>
         <table class="table table-hover">
                 <td width="200px" class="thtd">产品美图</td>
                <td class="thtd">编号</td>
                <td class="thtd">宝贝名称</td>
                <td class="thtd">宝贝详情</td> 
                <td class="thtd">单价</td>
                <td class="thtd">库存数量</td>
                <td class="thtd">加入购物车</td>
                <td class="thtd">我要购买</td>
                <td class="thtd">收藏</td>
                
             <c:forEach items="${requestScope.xyjn_list}" var="book">
            <tr>
                <td><img src="img/${book.bookimage }"></td>
                <td>${book.booknomber}</td>
                <td>${book.bookname}</td> 
                <td><a href="thirddetail">点击了解详情</td>
                <td><font color="red">${book.bookprice}</font></td>
                <td>${book.bookcount}</td>
                <td><a class="btn btn-primary" href="save?book_id=${book.id}" role="button" >加入购物车</a></td>
                <td><a class="btn btn-info" href="saveorder?book_id=${book.id}" role="button">我要购买</a></td> 
                <td><a class="btn btn-danger" href="savecollect?book_id=${book.id}" role="button">收藏</a></td> 
            </tr>
            </c:forEach>
        </table>
     </div>
 </div>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <div class="pull-right" style="margin-right:2%;margin-top:100px">
      <img src="img/qy3.png">
      <p style="text-align:center;">版权所有：杭州哈邦文化创意有限公司。联系地址：中国矿业大学南湖校区。联系电话：15005200697<a href="http://mp.weixin.qq.com/s?__biz=MzI2NTEwMTYyOA==&mid=582235685&idx=1&sn=980daf2646c1a1aec67482d2611641db&mpshare=1&scene=23&srcid=0715h1pIXb6JtfpWkeCmPWu4#rd">关于我们</a></p>
      </div>
  </body>
</html>