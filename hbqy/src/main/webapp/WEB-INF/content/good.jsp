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
    <title>宝贝都在这</title>

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
         <h1>青鱼所有产品库</h1>
         <br>
         <table class="table table-hover">
                <td width="200px" class="thtd">产品图片</td>
                <td class="thtd">产品编号</td>
                <td class="thtd">产品名称</td>
                <td class="thtd">产品详情</td> 
                <td class="thtd">产品价格</td>
                <td class="thtd">产品库存</td>
                <td class="thtd">已售数量</td>
                <td class="thtd">下架</td>
                
             <c:forEach items="${requestScope.book_list}" var="book">
            <tr>
                <td><img src="img/${book.bookimage }"></td>
                <td>${book.booknomber}</td>
                <td>${book.bookname}</td> 
                <td>${book.bookintro}</td>
                <td><font color="red">￥${book.bookprice}</font></td>
                 <td>${book.bookcount}</td> 
                <td>${book.booksale}</td>
               
                <td><a class="btn btn-danger" href="removegood?book_id=${book.id}" role="button">下架</a></td> 
            </tr>
            </c:forEach>
        </table>
        
          <h1>添加产品</h1>
         <br>
         <form action="goodadd" method="post">
         <table class="table table-hover" >
                <td width="200px" class="thtd">产品图片</td>
                 <td class="thtd">详情图片1</td>
                <td class="thtd">详情图片2</td>
                <td class="thtd">详情图片3</td>
                <td class="thtd">详情图片4</td> 
                <td class="thtd">产品编号</td>
                <td class="thtd">产品名称</td>
                <td class="thtd">产品类型</td>
                <td class="thtd">产品详情</td> 
                <td class="thtd">产品价格</td>
                <td class="thtd">产品数量</td>
                <td class="thtd">添加</td>
            <tr>
                <td><input type="file" name="bookimage"></td>
                 <td><input type="file" name="bookimage1"></td>
                  <td><input type="file" name="bookimage2"></td>
                   <td><input type="file" name="bookimage3"></td>
                    <td><input type="file" name="bookimage4"></td>
                <td><input type="text" name="booknomber"></td>
                <td><input type="text" name="bookname"></td>
                 <td><input type="text" name="booktype"></td>
                <td><input type="text" name="bookintro"></td>
                <td><input type="text" name="bookprice"></td>
                <td><input type="text" name="bookcount"></td>
                <td><button type="submit" class="btn btn-info">添加</button></td> 
            </tr>
           
        </table></form>
     </div>
 </div>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>