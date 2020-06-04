<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Scu Assistant Register</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/urpjs.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/assets/layer/layer.js"></script>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/4.2.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
  </head>
  <body>
    <script>
      function scuregister() {
        const param1 = $("input[name=registerUsername]").val();
        const param2 = $("input[name=registerPassword]").val();
        const param3 = $("input[name=jwc-username]").val();
        const param4 = $("input[name=jwc-password]").val();
        const param5 = $("input[name=email]").val();
        const param6 = $("input[name=invitecode]").val();
        if ((param1!= null&&param1.length>0)&&(param2!= null&&param2.length>0)&&(param3!= null&&param3.length>0)&&(param4!= null&&param4.length>0)&&(param5!= null&&param5.length>0)){
          $.ajax({
            url:"${pageContext.request.contextPath}/RegisterServlet",
            type:"post",
            data:{
              username:param1,
              password:param2,
              jwcusername:param3,
              jwcpassword:param4,
              email:param5,
              inviteCode:param6
            },
            success:function(result){
              // var str =JSON.stringify(result);
              urp.alert(result);
              if(result === "注册成功"){
                    history.go(-1);
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
                    <h1>欢迎注册</h1>
                  </div>
                  <p>SCU Assistant</p>
                </div>
              </div>
            </div>
            <!-- Form Panel    -->
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                    <div class="form-group">
                      <input id="register-username" class="input-material" type="text" name="registerUsername" placeholder="请输入用户名/姓名" >
								      <div class="invalid-feedback">
								        	用户名必须在2~10位之间
								      </div>
                    </div>
                    <div class="form-group">
                      <input id="register-password" class="input-material" type="password" name="registerPassword" placeholder="请输入密码"   >
                    	<div class="invalid-feedback">
								        	密码必须在6~10位之间
								      </div>
                    </div>
                    <div class="form-group">
                      <input id="register-passwords" class="input-material" type="password" name="registerPasswords" placeholder="确认密码"   >
                    	<div class="invalid-feedback">
								        	两次密码必须相同 且在6~10位之间
								      </div>
                    </div>
                    <div class="form-group">
                      <input id="jwc-username" class="input-material" type="text" name="jwc-username" placeholder="请输入学号"   >
                    </div>
                    <div class="form-group">
                      <input id="jwc-password" class="input-material" type="text" name="jwc-password" placeholder="请输入教务处密码"   >
                    </div>
                  <div class="form-group">
                    <input id="email" class="input-material" type="text" name="email" placeholder="输入邮箱"   >
                  </div>
                  <div class="form-group">
                    <input id="invitecode" class="input-material" type="text" name="invitecode" placeholder="输入邀请码"   >
                  </div>
                    <div class="form-group">
                      <button id="reg" type="button" name="register" class="btn btn-primary" onclick="scuregister()">注册</button>
                    </div>
                  <small>已有账号?</small><a href="log.jsp" class="signup">&nbsp;登录</a>
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
    <script>
    	$(function(){
    		/*错误class  form-control is-invalid
    		正确class  form-control is-valid*/
    		var flagName=false;
    		var flagPas=false;
    		var flagPass=false;
    		/*验证用户名*/
    		var name,passWord,passWords;
    		$("#register-username").change(function(){
    			name=$("#register-username").val();
    			if(name.length<2||name.length>10){
    				$("#register-username").removeClass("form-control is-valid")
    				$("#register-username").addClass("form-control is-invalid");
    				flagName=false;
    			}else{
    				$("#register-username").removeClass("form-control is-invalid")
    				$("#register-username").addClass("form-control is-valid");
    				flagName=true;
    			}
    		})
    		/*验证密码*/
    		$("#register-password").change(function(){
    			passWord=$("#register-password").val();
    			if(passWord.length<6||passWord.length>18){
    				$("#register-password").removeClass("form-control is-valid")
    				$("#register-password").addClass("form-control is-invalid");
    				flagPas=false;
    			}else{
    				$("#register-password").removeClass("form-control is-invalid")
    				$("#register-password").addClass("form-control is-valid");
    				flagPas=true;
    			}
    		})
    		/*验证确认密码*/
    		$("#register-passwords").change(function(){
    			passWords=$("#register-passwords").val();
    			if((passWord!=passWords)||(passWords.length<6||passWords.length>18)){
    				$("#register-passwords").removeClass("form-control is-valid")
    				$("#register-passwords").addClass("form-control is-invalid");
    				flagPass=false;
    			}else{
    				$("#register-passwords").removeClass("form-control is-invalid")
    				$("#register-passwords").addClass("form-control is-valid");
    				flagPass=true;
    			}
    		})
    		
    		
    		$("#regbtn").click(function(){
    			if(flagName&&flagPas&&flagPass){
    				localStorage.setItem("name",name);
    				localStorage.setItem("passWord",passWord);
    				location="login.html"
    			}else{
    				if(!flagName){
    					$("#register-username").addClass("form-control is-invalid");
    				}
    				if(!flagPas){
    					$("#register-password").addClass("form-control is-invalid");
    				}
    				if(!flagPass){
    					$("#register-passwords").addClass("form-control is-invalid");
    				}
    			}
    		})
    	})
    </script>
  </body>
</html>