<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>商品评价</title>  
    <link rel="stylesheet" href="http://v3.bootcss.com/dist/css/bootstrap.min.css" />  
     <link href="css/pingjia.css" rel="stylesheet">
     
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>  
</head>  
<body style="background-color:gray">  
    <div class="container"> 
      <h3> 欢迎【 ${sessionScope.user.username}】</h3>
          <img src="img/${requestScope.bookimg}" >
          <p style="float:left">商品简介：${requestScope.intro}<br>商品编号：${requestScope.number}<br>商品单价：${requestScope.price}</p> <p id="book_id" style="float:left">${requestScope.book_id}</p>
     <form action="comment" method="post">
        <table class="table table-bordered table-hover table-striped table-condensed">  
            <tr>  
                <td colspan='3'>  
                    <h2>订单评价</h2>  
                </td>  
            </tr>  
            <tr>  
                <th width="33%">评价项目</th>  
                <th width="33%">星星</th>  
                <th width="33%">分数</th>  
            </tr>  
            <tr class="tr">  
                <td>物流速度</td>  
                <td>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                </td>  
                <td class="score" id="tra" > </td>         
            </tr>  
            <tr class="tr">  
                <td>商品质量</td>  
                <td>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                </td>  
                <td class="score" id="pro"></td>  
            </tr>  
            <tr class="tr">  
                <td>卖家服务</td>  
                <td>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                    <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>  
                </td>  
                <td class="score" id="ser"></td>  
            </tr>  
            <tr>  
                                  
                <td colspan="3" style="text-align: center;">  
                
              <!--     <input type="hidden" name="book_id" id="book_id" value="${requestScope.book_id}" />  -->
                 
<!--                    <button type="button" class="btn btn-success">提交</button>   -->
				    <button type="button" class="btn btn-primary" onclick="submit_a();">立即评价</button>
                    <button type="button" class="btn btn-info" onclick="javascript:location.reload();">重选</button>  
                </td>  
            </tr>  
        </table> 
        </form> 
    </div> 
  <SCRIPT src="js/pingjia.js" type=text/javascript></SCRIPT>
</body>
</html>