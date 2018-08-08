<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title>登录</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../../css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../../css/font-awesome.css?v=4.4.0" rel="stylesheet"/>
    <link href="../../css/animate.css" rel="stylesheet"/>
    <link href="../../css/style.css" rel="stylesheet"/>
    <link href="../../css/login.css" rel="stylesheet"/>
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script type="text/javascript" src="../../js/md5.js" />
    <script type="text/javascript" src="../../js/jquery.min.js" />
    <script type="text/javascript">
       alert(1);

        $("#login").click(function(){
            var username = $("#username").val();
            var password = $("#password").val();
            var md5Password = hex_md5(password);
            alert(md5Password);
            $.ajax({
                url : "user/login",
                type : "post",
                data : {
                    username : username,
                    password : md5Password
                },
                beforeSend : function(){
                    $.message.progress({
                        text : "正在登录中..."
                    });
                },
                success:function(data){
                    $.message.progress('close');
                    alert(data);
                }
            });
        });

    </script>
</head>

<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-12">
                <form method="post" action="">
                    <h4 class="no-margins">登录：</h4>
                    <p class="m-t-md">登录到H+后台主题UI框架</p>
                    <input type="text" id="username" class="form-control uname" placeholder="用户名" />
                    <input type="password" id="password" class="form-control pword m-b" placeholder="密码" />
                    <a href="">忘记密码了？</a>
                    <input type="button" id="login" class="btn btn-success btn-block" value="登录"/>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy; hAdmin
            </div>
        </div>
    </div>
</body>
</html>
