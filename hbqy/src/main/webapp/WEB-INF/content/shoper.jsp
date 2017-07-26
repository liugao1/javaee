<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>青鱼定制</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>

  <body style="background-color:gray">

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">青鱼后台管理</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="main">青鱼定制</a></li>
            <li style="margin-top:5px;"><img src="img/qylogo.jpg"></li>
            <li><a href="http://mp.weixin.qq.com/s?__biz=MzI2NTEwMTYyOA==&mid=582235967&idx=1&sn=9f80298e319da7a0db66a3296688f4c7&chksm=4de21f6c7a95967a87b3611d5c271ff88dc03a171b53184019e881d090713a0097901343d13c&mpshare=1&scene=23&srcid=0725oumtdmmb6qSUqe9KeFPr#rd
">设计图库</a></li>
            <li><a href="admin">注销</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li ><a href="qingyuchanping">商品管理 <span class="sr-only">(current)</span></a></li>
            <li><a href="adminorder">订单管理</a></li>
            <li><a href="users">用户管理</a></li>
            <li><a href="lisi">已售产品</a></li>
            <li><a href="#">在线人数${applicationScope.count}人</a></li>
          </ul>
          
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">青鱼定制后台管理系统欢迎您</h1>
          <div class="table-responsive">
          
            <table class="table table-striped">
              <thead>
                <tr>
                
                  <th>宝贝图片</th>
                  <th>宝贝名称</th>
                  <th>宝贝简介</th>
                  <th>宝贝价格</th>
                   <th>宝贝库存</th>
                   <th>已售</th>
                  
                </tr>
              </thead>
               <c:forEach items="${requestScope.book_list}" var="book">
              <tbody>  
                <tr>
                <td><img src="img/${book.bookimage }"></td>
                <td>${book.bookname}</td> 
                <td>${book.bookintro}</td>
                <td><font color="red">￥${book.bookprice}</font></td>  
                <td>${book.bookcount}</td>
                <td>${book.booksale}</td>        
                </tr>            
              </tbody>
               </c:forEach>
             
            </table>
            
         
          </div>
           <p id="footer">&copy;哈邦文化创意有限公司<sup>&reg;</sup></p>
        </div>
      
      </div>
    </div>
      
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="js/holder.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/workaround.js"></script>
 
  </body>
</html>
 