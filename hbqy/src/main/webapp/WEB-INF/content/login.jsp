<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body style="background-color:gray">
      <div style="width:15%; margin-left:45%; margin-right:auto; z-index:1;margin-top:100px;">
          <div style="margin-left:35%; margin-right:auto; "><img src="img/qy1.jpg" class="img-circle"></div><br></br>
          <form action="userlogin" method="POST">
         <div class="input-group">
             <span class="input-group-addon" id="basic-addon1"><font color="#3366FF"><span class="glyphicon glyphicon-user"></span>账号：</font></span>
             <input type="text" class="form-control" placeholder="loginnumber" aria-describedby="basic-addon1" name="loginnumber" value="${sessionScope.user.loginnumber }">
        </div>
           <br>
         <div class="input-group">
             <span class="input-group-addon" id="basic-addon1"><font color="#3366FF"><span class="glyphicon glyphicon-lock"></span>密码：</font></span>
             <input type="password" class="form-control" placeholder="password" aria-describedby="basic-addon1" name="password" value="${sessionScope.user.password}">
         </div>
         <br>
         
         <br>
         <div class="btn-group btn-group-justified" role="group" aria-label="...">
             <div class="btn-group" role="group">
               <button class="btn btn-success" type="submit">登录</button>
               
              
            </div>
            
            
       </div>
       <div>
               &nbsp;&nbsp;<input type="checkbox" name="ck">&nbsp;&nbsp;记住账户和密码
         </div>
          </form>
       
          <div class="btn-group btn-group-justified" role="group" aria-label="...">
             
          <div style="margin-left:35%;"><button type="button" class="btn btn-link";color="white"><a href="reg">注册</a></button></div>
      </div>
           
             <div style="margin-left:35%;"><button type="button" class="btn btn-link"><a href="findpassword"><color="white">忘记密码？</color></a></button></div>
             <div style="margin-left:35%;"><button type="button" class="btn btn-link";color="white"><a href="admin">管理员登陆</a></button></div>
      <div style="text-align:center;"><font color="red">${requestScope.message }</font></div>
      
            
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