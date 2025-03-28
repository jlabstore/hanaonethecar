<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>OneTheCar Login</title>

    <!-- Custom fonts for this template-->
    <link href="/sbAdmin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/sbAdmin/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-6 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <%-- <div class="col-lg-6 d-none d-lg-block bg-login-image"></div> --%>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-10">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h4 class="h4 text-gray-900 mb-4">하나원더카 웹사이트 관리자</h4>
                                    </div>
                                    <form class="user" method="post" name="f" action="/login/auth">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                name="username" 
                                                aria-describedby="emailHelp"
                                                placeholder="id" onkeydown="javascript:if(event.keyCode == 13) goLogin();" >
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                  name="password"
                                                  placeholder="password" onkeydown="javascript:if(event.keyCode == 13) goLogin();">
                                        </div>
                                        <a href="javascript:void(0);" onclick="goLogin()" class="btn btn-primary btn-user btn-block">
                                            Login
                                        </a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/sbAdmin/vendor/jquery/jquery.min.js"></script>
    <script src="/sbAdmin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/sbAdmin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/sbAdmin/js/sb-admin-2.min.js"></script>

</body>
<script type="text/javascript">

    $(document).ready(function(){
        var errorType = '${param.errorType}';
        if(errorType != null && errorType != '') {
            if("errorId" == errorType) {
                alert("아이디 또는 패스워드를 확인하세요.");
            }else if("errorPassword" == errorType) {
                alert("아이디 또는 패스워드를 확인하세요.");
                history.back();
            }
            
            }

    });

    var goLogin = function(){
        f.submit();
    }

</script>
</html>