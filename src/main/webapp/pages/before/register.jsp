<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="root61">
<head>
    <style type="text/css">.protocol a {
        color: #c81623;
        text-decoration: underline;
    }</style>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <title>个人注册</title>
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/1.0.0/ui-base.css">
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/user/reg/3.0.0/css/tinyscrollbar-170524.css">
    <script type="text/javascript" src="//misc.360buyimg.com/jdf/lib/jquery-1.6.4.js"></script>
    <script type="text/javascript" async="" src="https://wl.jd.com/wl.js"></script>
    <script type="text/javascript" async="" src="//seq.jd.com/js/s.js?v=6"></script>
    <script type="text/javascript">window.pageConfig = {compatible: true};</script>
    <script type="text/javascript" src="//misc.360buyimg.com/jdf/1.0.0/unit/??base/1.0.0/base.js"></script>
    <script>
        seajs.off('load');
        seajs.off('fetch');
        seajs.config({alias: {e2: '//verify.jd.com/static/gridcaptcha/dist/js/lib/e2.js'}});
    </script>
    <link source="widget" type="text/css" rel="stylesheet"
          href="//misc.360buyimg.com/user/reg/3.0.0/widget/??/header/header.css,/common/common.css,/progress-bar/progress-bar.css,/reg-steps/reg-steps.css,/foreign-number-layer-170524/foreign-number-layer-170524.css,/footer/footer.css">
    <script type="text/javascript" src="//misc.360buyimg.com/user/reg/3.0.0/js/shape.js"></script>

    <script src="//ivs.jd.com/slide/js/jdSlide.1.0.min.js"></script>

    <link charset="utf-8" rel="stylesheet" href="https://misc.360buyimg.com/jdf/1.0.0/ui/dialog/1.0.0/dialog.css">
</head>
<body>
<!-- widget header begin -->
<div class="header">
    <div class="logo-con w clearfix">
        <a href="https://www.jd.com" class="logo ">
        </a>
        <div class="logo-title">欢迎注册</div>

        <div class="have-account">已有账号？ <a href="login.jsp">请登录&gt;</a>
        </div>

    </div>
</div>
<!-- widget header end -->
<div class="container w">


    <!-- widget progress-bar begin -->
    <div class="progress-bar clearfix">
        <div class="pro-step cur-step ">
            <span class="step-index">1</span>
            <p class="step-desc">填写账号信息</p>
        </div>
        <div style="color: #33bb44"  class="pro-line pro-line1 person-pro-line person-pro-line1 "></div>
        <div class="pro-step pro-step2 person-pro-step2  ">
            <span id="tagTop"  class="step-index">2</span>
            <p id="tag"  class="step-desc">注册成功</p>
        </div>
        <%--<div class="pro-line pro-line2 person-pro-line person-pro-line2 "></div>--%>
        <%--<div class="pro-step pro-step3 person-pro-step3  ">--%>
            <%--<span class="step-index">3</span>--%>
            <%--<p class="step-desc">注</p>--%>
        <%--</div>--%>
    </div>
    <!-- widget progress-bar end -->
    <!-- widget reg-steps begin -->
    <div class="main ">
        <div class="reg-form">
            <form action="/before/register" method="POST" onsubmit="return checkSubmit()">
                <div id="step2-wrap" style="display:block;">
                    <div id="loginName"  style="border: 1px solid #999;width: 100%;height: 54px;margin-bottom: 20px">
                        <label style="margin-left: 3%">用 户&nbsp; 名</label>
                        <input id="userName" name="userName" onblur="registerVerify()" style="margin-left: 1%;border: 0px;width: 80%;height: 54px;margin-bottom: 20px"/>
                        <i id="userInfo" style="position: absolute;margin-top: 10px;margin-left: 1%;color: green">用户名可以为中文，英文字母，数字及下划线组成，长度2-20位</i>
                    </div>
                    <div style="border: 1px solid #999;width: 100%;height: 54px;margin-bottom: 20px">
                        <label style="margin-left: 3%">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                        <input type="password" id="password" onblur="passwordVerify()" style="margin-left: 1%;border: 0px;width: 80%;height: 54px;margin-bottom: 20px"/>
                        <i id="passwordInfo" style="position: absolute;margin-top: 10px;margin-left: 1%;color: green">只能输入6-20个字母、数字、下划线</i>
                    </div>
                    <div style="border: 1px solid #999;width: 100%;height: 54px;margin-bottom: 20px">
                        <label style="margin-left: 3%">确认密码</label>
                        <input type="password" onblur="confirmRegister()" name="password" id="confirmPassword" style="margin-left: 1%;border: 0px;width: 80%;height: 54px;margin-bottom: 20px"/>
                        <i id="newPasswordInfo" style="position: absolute;margin-top: 10px;margin-left: 1%"></i>
                    </div>
                    <div style="border: 1px solid #999;width: 100%;height: 54px;margin-bottom: 20px">
                        <label style="margin-left: 3%">手 机 &nbsp;号</label>
                        <input id="phone" onblur="phoneVerify()" name="phone" style="margin-left: 1%;border: 0px;width: 80%;height: 54px;margin-bottom: 20px"/>
                        <i id="phoneInfo" style="position: absolute;margin-top: 10px;margin-left: 1%"></i>
                    </div>
                    <div style="border: 1px solid #999;width: 100%;height: 54px;margin-bottom: 20px">
                        <label style="margin-left: 3%">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</label>
                        <input id="email" onblur="emailVerify()" name="email" style="margin-left: 1%;border: 0px;width: 80%;height: 54px;margin-bottom: 20px"/>
                        <i id="emailInfo" style="position: absolute;margin-top: 10px;margin-left: 1.5%"></i>
                    </div>
                    <div>
                        <button class="btn-register" id="form-register" onclick="register()">立即注册
                        </button>
                    </div>
                    <div class="input-tip">
                        <span></span>
                    </div>
                    <!--<div class="back-btn" id="back-btn">返回上一步</div>-->
                </div>
            </form>
            <div id="country_code_layer" style="display: none; top: 354px; left: 474.5px;">
                <iframe scrolling="no"
                        style="background-color:transparent; position: absolute; z-index: -1; width: 100%; height: 100%; top: 0; left:0;"
                        frameborder="0"></iframe>
                <div><a class="arrow"></a>
                    <div class="search-bar"><b class="search-icon"></b><input type="text" placeholder="搜索您的国家和地区"
                                                                              id="inputSearch"></div>
                    <div id="result">
                        <div class="capital-list">
                            <ul></ul>
                        </div>
                        <div class="current-capital"><span id="currentCapital">A</span><span class="line"></span></div>
                        <div class="country-list">
                            <div id="scrollbar2" class="scrollbar_all">
                                <div class="scrollbar">
                                    <div class="track">
                                        <div class="thumb">
                                            <div class="end"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="viewport">
                                    <div class="overview">
                                        <ul></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="no-result">未找到国家或地区</div>
                </div>
            </div>
        </div>
    </div>
    <!-- widget reg-steps end -->
</div>


<!-- widget footer begin -->
<div id="form-footer" class="footer w">
    <div class="links">
        <a rel="nofollow" target="_blank" href="//www.jd.com/intro/about.aspx"> 关于我们</a>|
        <a rel="nofollow" target="_blank" href="//www.jd.com/contact/">联系我们</a>|
        <a rel="nofollow" target="_blank" href="//zhaopin.jd.com/">人才招聘</a>|
        <a rel="nofollow" target="_blank" href="//www.jd.com/contact/joinin.aspx">商家入驻</a>|
        <a rel="no  follow" target="_blank" href="//www.jd.com/intro/service.aspx">广告服务</a>|
        <a rel="nofollow" target="_blank" href="//app.jd.com/">手机京东</a>|
        <a target="_blank" href="//club.jd.com/links.aspx">友情链接</a>|
        <a target="_blank" href="//media.jd.com">销售联盟</a>|
        <a href="//club.jd.com/" target="_blank">京东社区</a>|
        <a href="//gongyi.jd.com" target="_blank">京东公益</a>|
        <a target="_blank" href="//en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
    </div>
    <div class="copyright">
        Copyright©2004-2020&nbsp;&nbsp;京东JD.com&nbsp;版权所有
    </div>
</div>
<!-- widget footer end -->

<script type="text/javascript"
        src="//seq.jd.com/jseqf.html?bizId=JD_register_pc&amp;platform=js&amp;version=1"></script>
<script src="//cdn.bootcss.com/json2/20150503/json2.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/user/reg/3.0.0/js/common/jquery-1.11.1.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/user/reg/3.0.0/js/personal/seajs-text.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/user/reg/3.0.0/js/common/underscore-min.js"></script>
<script type="text/javascript">
    seajs.use('//misc.360buyimg.com/user/reg/3.0.0/js/personal/register-200204', function (reg) {
        reg.init();
    });
</script>
<script type="text/javascript" src="//misc.360buyimg.com/user/reg/3.0.0/widget/common/common.js"
        source="widget"></script>
<script src="//payrisk.jd.com/js/td.js"></script>
<script src="https://gia.jd.com/y.html?v=0.05015829629434576&amp;o=reg.jd.com/p/regPage"></script>
<script type="text/javascript">
    $(function () {
        getJdEid(function (eid, fpid) {
            $("#eid").val(eid);
            $("#sessionId").val(fpid);
        });
    });
</script>
<script type="text/javascript">
    (function () {
        var ja = document.createElement('script');
        ja.type = 'text/javascript';
        ja.async = true;
        ja.src = document.location.protocol + '//wl.jd.com/wl.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ja, s);
    })();

    //用户名唯一性验证
    function registerVerify() {
        var userName = $("#userName").val();
        var userVerify = userNameVerify(userName);
        if(userVerify == false){
            $("#userInfo").html("请输入正确的用户名格式").css({"color":"red"})
            $("#userName").val('');
        }else{
            $.post("/before/registerVerify",{"userName":userName},function (data) {
                var obj = JSON.parse(data);
                if(obj.flag == 1){
                    $("#userInfo").html("该用户名已被注册").css({"color":"red"})
                    $("#userName").val('');
                }else{
                    $("#userInfo").html('');
                }
            })
        }
    }

    //用户名校验（用户名可以为中文，英文字母，数字及下划线组成，长度2-20位）
    function userNameVerify(str) {
        var reg = /^[\u4E00-\u9FA5\uF900-\uFA2D|\w]{2,20}$/;
        return reg.test(str);
    }

    //邮箱正则验证
    function emailVerify() {
        var email = $("#email").val();
        var isEmail = IsEmail(email);
        if(isEmail == false){
            $("#emailInfo").html("请输入正确的邮箱格式").css({"color": "red"});
            $("#email").val('');
        }else{
            $("#emailInfo").html("")
        }
    }

    //密码正则验证
    function passwordVerify() {
        var password = $("#password").val();
        var IsPassword = isPassword(password);
        if(IsPassword == false){
            $("#passwordInfo").html("请输入正确的密码格式").css({"color": "red"});
            $("#password").val('');
        }else{
            $("#passwordInfo").html("")
        }
    }

    //手机号正则验证
    function phoneVerify() {
        var phone = $("#phone").val();
        var isTelCode = IsPhone(phone);
        if(isTelCode == false){
            $("#phoneInfo").html("请输入正确的手机号格式").css({"color": "red"});
            $("#phone").val('');
        }else{
            $("#phoneInfo").html("")
        }
    }

    /*校验密码格式（只能输入6-20个字母、数字、下划线） */
    function isPassword(str) {
        var reg=/^(\w){6,20}$/;
        return reg.test(str);
    }

    /*校验电话码格式 */
    function IsPhone(str) {
        var reg=/^[1][3,4,5,7,8][0-9]{9}$/;
        return reg.test(str);
    }

    //校验邮件地址是否合法
    function IsEmail(str) {
        var reg=/^\w+@[a-zA-Z0-9]{2,10}(?:\.[a-z]{2,4}){1,3}$/;
        return reg.test(str);
    }
    
    //两次密码输入是否一致验证
    function confirmRegister() {
        var password = $("#password").val();
        var confirmPassword = $("#confirmPassword").val();
        if(password != confirmPassword) {
            $("#newPasswordInfo").html("两次密码输入不一致").css({"color": "red"})
            $("#confirmPassword").val('');
        }else{
            $("#newPasswordInfo").html("");
        }
    }
    
    function checkSubmit() {
        var userName= $("#userName").val();
        var password= $("#password").val();
        var phone= $("#phone").val();
        var email= $("#email").val();
        var confirmPassword= $("#confirmPassword").val();
        if(userName == '') {
            $("#userInfo").html("用户名不能为空").css({"color": "red"});
            return false
        }
        if(password == '') {
            $("#userInfo").html("")
            $("#passwordInfo").html("密码不能为空").css({"color": "red"});
            return false
        }
        if(confirmPassword == '') {
            $("#passwordInfo").html("")
            $("#newPasswordInfo").html("确认密码不能为空").css({"color": "red"});
            return false
        }
        if(phone == '') {
            $("#newPasswordInfo").html("")
            $("#phoneInfo").html("手机号不能为空").css({"color": "red"});
            return false
        }
        if(email == '') {
            $("#phoneinfo").html("")
            $("#emailInfo").html("邮箱不能为空").css({"color": "red"});
            return false
        }
        $("#emailInfo").html("")
        $("#tagTop").css({"color": "#33bb44"});
        $("#tag").css({"color": "#33bb44"});
        return true
    }
</script>


<%--<a class="feedback" href="http://surveys.jd.com/index.php?r=survey/index/sid/447941/lang/zh-Hans"--%>
   <%--style="margin-top: -67.5px; position: fixed; right: 0px; bottom: 50%;"></a>--%>
<script src="//gias.jd.com/js/td.js"></script>
</body>
</html>