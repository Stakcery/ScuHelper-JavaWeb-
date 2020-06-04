<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Scu Assistant Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/urpjs.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/assets/layer/layer.js"></script>
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
  </head>
  <body>
  <script>
    function getCookie(username){
        $.ajax({
          url:"${pageContext.request.contextPath}/getCookie",
          type:"post",
          data:{
            username:username,
          },
          success:function(result){
            urp.alert(result);
            window.location.replace("${pageContext.request.contextPath}/pages/login/success.jsp")
            }
        })

    }

  </script>
  <script>
    function jwclogin() {
      var param1 = $("input[name=userName]").val();
      var param2 = $("input[name=passWord]").val();
      if ((param1!= null&&param1.length>0)&&(param2!= null&&param2.length>0)){
        $.ajax({
          url:"${pageContext.request.contextPath}/loginServlet",
          type:"post",
          data:{
            username:param1,
            password:param2,
          },
          success:function(result){
            urp.alert(result)
            if(result==="登录成功"){
              urp.alert("登录成功，正在更新教务处Cookie")
              getCookie(param1)
            }
            // JSON.stringify( json );         此方法可以把一个json对象转换成为json字符串
            // JSON.parse( jsonString );       此方法可以把一个json字符串转换成为json对象
          }

        });
      }else {
        urp.alert("很抱歉，当前输入格式不正确，请仔细检查！");
      }
    }
  </script>
    <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
            <!-- Logo & Information Panel-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <h1>Scu-Assistant</h1>
                  </div>
                  <p>欢迎登录</p>
                </div>
              </div>
            </div>
            <!-- Form Panel    -->
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                  <form method="post" action="log.jsp" class="form-validate" id="loginFrom">
                    <div class="form-group">
                      <input id="login-username" type="text" name="userName" required data-msg="请输入用户名" placeholder="用户名" value="admin" class="input-material">
                    </div>
                    <div class="form-group">
                      <input id="login-password" type="password" name="passWord" required data-msg="请输入密码" placeholder="密码" class="input-material">
                    </div>
                    <button id="reg" type="button" name="register" class="btn btn-primary" onclick="jwclogin()">登录</button>
                    <div style="margin-top: -40px;">
                    	<!-- <input type="checkbox"  id="check1"/>&nbsp;<span>记住密码</span>
                    	<input type="checkbox" id="check2"/>&nbsp;<span>自动登录</span> -->
                    	<div class="custom-control custom-checkbox " style="float: right;">
											    <input type="checkbox" class="custom-control-input" id="check2" >
											    <label class="custom-control-label" for="check2">自动登录</label>
											</div>
											<div class="custom-control custom-checkbox " style="float: right;">
											    <input type="checkbox" class="custom-control-input" id="check1" >
											    <label class="custom-control-label" for="check1">记住密码&nbsp;&nbsp;</label>
											</div>
                    </div>
                  </form>
                  <br />
                  <small>没有账号?</small><a href="register.jsp" class="signup">&nbsp;注册</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="https://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/bootstrap/4.2.1/bootstrap.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script><!--表单验证-->
    <!-- Main File-->
    <script src="js/front.js"></script>
    <script>
    	$(function(){
    		/*判断上次是否勾选记住密码和自动登录*/
    		var check1s=localStorage.getItem("check1");
    		var check2s=localStorage.getItem("check2");
    		var oldName=localStorage.getItem("userName");
    		var oldPass=localStorage.getItem("passWord");
    		if(check1s=="true"){
    			 $("#login-username").val(oldName);
    			 $("#login-password").val(oldPass);
    			 $("#check1").prop('checked',true);
    		}else{
    			 $("#login-username").val('');
    			 $("#login-password").val('');
    			 $("#check1").prop('checked',false);
    		}
    		if(check2s=="true"){
    			$("#check2").prop('checked',true);
    			$("#loginFrom").submit();
    			//location="https://www.baidu.com?userName="+oldName+"&passWord="+oldPass;//添加退出当前账号功能
    		}else{
    			$("#check2").prop('checked',false);
    		}
    		/*拿到刚刚注册的账号*/
    		/*if(localStorage.getItem("name")!=null){
    			$("#login-username").val(localStorage.getItem("name"));
    		}*/
    		/*登录*/
    		$("#login").click(function(){
    			var userName=$("#login-username").val();
    			var passWord=$("#login-password").val();
    			/*获取当前输入的账号密码*/
    			localStorage.setItem("userName",userName)
    			localStorage.setItem("passWord",passWord)
    			/*获取记住密码  自动登录的 checkbox的值*/
    			var check1 = $("#check1").prop('checked');
	    		var check2 = $('#check2').prop('checked');
	    		localStorage.setItem("check1",check1);
	    		localStorage.setItem("check2",check2);
    		})

    		/*$("#check2").click(function(){
    			var flag=$('#check2').prop('checked');
    			if(flag){
    				var userName=$("#login-username").val();
	    			var passWord=$("#login-password").val();
	    			$.ajax({
	    				type:"post",
	    				url:"http://localhost:8080/powers/pow/regUsers",
	    				data:{"userName":userName,"passWord":passWord},
	    				async:true,
	    				success:function(res){
	    					alert(res);
	    				}
	    			});
    			}
    		})*/
    	})
    </script>
  </body>
</html>