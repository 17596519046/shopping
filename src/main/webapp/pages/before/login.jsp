<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <title>豫予-欢迎登录</title>
    <link rel="icon" href="/img/image/fav.jpg"/>
    <link type="text/css" rel="stylesheet"
          href="//misc.360buyimg.com/user/passport/1.0.0/??/widget/base/base.css,widget/common-2016-1124/common-2016-1124.css,/widget/login-form-2018-0827/login-form-2018-0827.css,/widget/login-banner/login-banner.css,/widget/safe-step/safe-step.css,/widget/foreign-number-layer-170524/foreign-number-layer-170524.css"
          source="widget"/>
    <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/user/passport/1.0.0/css/tinyscrollbar-170524.css">
    <script type="text/javascript" src="//misc.360buyimg.com/jdf/lib/jquery-1.6.4.js"></script>
    <script type="text/javascript" src="//misc.360buyimg.com/user/passport/1.0.0/??/js/underscore-min.js"></script>
    <script type="text/javascript" src="//ivs.jd.com/slide/js/jdSlide.1.0.min.js"></script>
    <script type="text/javascript" src="/new/misc/js/common_login_v20180829.js"></script>
    <script type="text/javascript">
        $(function () {
            window.SysConfig = {
                encryptInfo: true
            };
        });
    </script>
</head>
<body>
<!-- SDK 登录 -->
<div class="w">
    <div id="logo">
            <%--<img style="width: 50%;height:85px;position: absolute;margin-left: 15%;margin-top: -5%" src="/img/image/yu.jpg" alt="京东" >--%>
        <b></b>
    </div>
</div>
<div id="content">
    <div class="tips-wrapper" style="background-color: ghostwhite"  >
        <div class="tips-inner">
            <div class="cont-wrapper"><i class="icon-tips"></i>
                <p>依据《网络安全法》，为保障您的账户安全和正常使用，请尽快完成手机号验证！
                    <%--新版<a href="https://about.jd.com/privacy/" class="black"--%>
                    <%--target="_blank">《京东隐私政策》</a>已上线，--%>
                    将更有利于保护您的个人隐私。</p></div>
        </div>
    </div>
    <div class="login-wrap">
        <div class="w">
            <div class="login-form">
                <div class="tips-wrapper" style="background-color: ghostwhite">
                    <div class="tips-inner">
                        <div class="cont-wrapper"><i class="icon-tips"></i>
                            <p>豫予不会以任何理由要求您转账汇款，谨防诈骗。</p></div>
                    </div>
                </div>
                <%--<div class="login-tab login-tab-l">--%>
                <%--<a href="javascript:void(0)" clstag="pageclick|keycount|login_pc_201804112|9"> 扫码登录</a>--%>
                <%--</div>--%>
                <div class="login-tab login-tab-r">
                    <%--<a href="javascript:void(0)" clstag="pageclick|keycount|login_pc_201804112|10">账户登录</a>--%>
                    <a href="#" clstag="pageclick|keycount|login_pc_201804112|10">账户登录</a>
                </div>
                <div class="login-box" style="display: inline-block;visibility: visible">
                    <div class="mt tab-h">
                    </div>
                    <div class="msg-wrap">
                        <i id="msg"></i>
                        <div class="msg-error hide"><b></b></div>
                    </div>
                    <div class="mc">
                        <div class="form">
                            <form id="formlogin" method="post" onsubmit="return false;">
                                <%--<input type="hidden" id="sa_token" name="sa_token"--%>
                                       <%--value="B68C442BE645754F33277E701208059080DD726A94A73F76DEC3053A838549C06EB7D3797CE1C5BBE7C2B2EF9CA7D467C3C76FF0A28885EE64B432120BA9B13D348C69B7D2A54084AD0AF9F604987E3FDBE7C9AFDAF9326BDE8386385B87B75E179D738D31E85731EC0FD295304B71E21DFC74DB7CA584B3DF7506F4F2AD381A27DF71751BAE3AEB45251CA69177C656EC9C8BF15245ABAB3C09270C6C46F7F5273D4E805FF5C13C9F82D2DE99289200C9573948CA08B686B349E99C0D5877A917003300F445E95B7A5889F00B2DEB03DD92F314CC78BF3F7FC0E6BC09BB076B629F99E98A22639D75ADDE59CE673C5A5FEAB4D194F97B6EBE728F09E729FED3DAAF94A24C34C6B0197F5C61C7AD238854A44AB9590F75EB305A93781BA827DC133374F638A041B46EB1B20472A1871818C01D2DC4A7787FC88FBE6C251C566C0AF71CF12D7176563C1561D641B3BE86D99078429F8B5DD3C46F2E185F6DCD51F01FEB573A85570D04F5C616BC428D3BC1A2DF65B2F174256C62120D27F82B4AE6CC3BF08261DEAF6D995E2B3708D2FCB265BE7F73C0C2DB6A135553535CE70B838C41D15CFF6C4B5E2236945B6E7CE532C4580C335D2396761FBECEC0E70BA8A11743978AF157078DE3D27FC4AE5EFD7F04237A5FF74EA7197DC1A7BC785BBBBD4F55F7BD9C50167A0036C741E02ADDB886DE3029984A444AC605A8813CC6BBC32670F57386DD53AB7DFE3F5078BEA5EAF78B571AEC2A991247A738D2CBBB89442B8AC3D226BFD5AEF03F15CE3CE050B0D551E9E2638B2A8595177EE58104AF10A81EF57EEE2470E19E16134C1D5296D3657E65B96DA4C337CB4CE45DEB0F675E43B4A5C3DF5D8DACD799377BDE98E06E290F63D8E9C469C1FE7E1A1D0BBA814C24EC2430749C0BD13F21C3F0D4D37E74A58FC8D77824C2DFFFC195E97A5B6DFA459486D62D21935DA72EA378BFECFF08FBCA884E491F16CE93FD36EDA259FEE006CFAD5BE7CB4D9B419BB7078406C5218F8554D7DCC487B4227154E72D0788C9525047E127F0D6B41CFE3F79497B582027A67D08343CE61081AA9FEFB6B394"/>--%>
                                <%--<input type="hidden" id="uuid" name="uuid"--%>
                                       <%--value="fd177ad4-34fb-4bbb-a8d5-e1e6eb47766a"/>--%>
                                <%--<input type="hidden" name="eid" id="eid" value="" class="hide"/>--%>
                                <%--<input type="hidden" name="fp" id="sessionId" value="" class="hide"/>--%>
                                <%--<input type="hidden" name="_t" id="token" value="_t" class="hide"/>--%>
                                <%--<input type="hidden" name="loginType" id="loginType" value="c" class="hide"/>--%>
                                <%--<input type="hidden" name="main_flag" id="main_flag" value="main_flag" class="hide"/>--%>
                                <%--<input type="hidden" name="pubKey" id="pubKey"--%>
                                       <%--value="MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDC7kw8r6tq43pwApYvkJ5laljaN9BZb21TAIfT/vexbobzH7Q8SUdP5uDPXEBKzOjx2L28y7Xs1d9v3tdPfKI2LR7PAzWBmDMn8riHrDDNpUpJnlAGUqJG9ooPn8j7YNpcxCa1iybOlc2kEhmJn5uwoanQq+CA6agNkqly2H4j6wIDAQAB"--%>
                                       <%--class="hide"/>--%>
                                <%--<input type="hidden" id="slideAppId" value="1604ebb2287" class="hide">--%>
                                <%--<input type="hidden" name="useSlideAuthCode" id="useSlideAuthCode" value="1"--%>
                                       <%--class="hide">--%>
                                <div class="item item-fore1">
                                    <label for="loginname" class="login-label name-label"></label>
                                    <input id="loginname" type="text" class="itxt" name="loginname" tabindex="1"
                                           autocomplete="off"
                                           value=""
                                           placeholder="用户名"/>
                                    <span onclick="loginNameClear()" class="clear-btn" style="display: inline;"></span>
                                </div>

                                <div id="entry" style="display: inline-block;visibility: visible"
                                     class="item item-fore2">
                                    <label class="login-label pwd-label" for="nloginpwd"></label>
                                    <input type="password" id="nloginpwd" name="nloginpwd" class="itxt itxt-error"
                                           tabindex="2" autocomplete="off" placeholder="密码"/>
                                    <span class="clear-btn"></span>
                                    <span class="capslock"><b></b>大小写锁定已打开</span>
                                </div>


                                <div id="o-authcode"
                                     class="item item-vcode item-fore3  hide ">
                                    <input id="authcode" type="text" class="itxt itxt02" name="authcode"
                                           tabindex="3">
                                    <img id="JD_Verification1" class="verify-code"
                                         clstag="pageclick|keycount|login_pc_201804112|14"
                                         src2="//authcode.jd.com/verify/image?srcid=passport&amp;a=1&amp;acid=fd177ad4-34fb-4bbb-a8d5-e1e6eb47766a&amp;uid=fd177ad4-34fb-4bbb-a8d5-e1e6eb47766a"
                                         onclick="this.src= document.location.protocol +'//authcode.jd.com/verify/image?srcid=passport&amp;a=1&amp;acid=fd177ad4-34fb-4bbb-a8d5-e1e6eb47766a&amp;uid=fd177ad4-34fb-4bbb-a8d5-e1e6eb47766a&amp;yys='+new Date().getTime();$('#authcode').val('');"/>
                                    <a href="javascript:void(0)" onclick="$('#JD_Verification1').click();"
                                       clstag="pageclick|keycount|login_pc_201804112|14">看不清换一张</a>
                                </div>

                                <div class="item item-fore4">
                                    <div class="safe">
                                        <span></span>
                                        <span class="forget-pw-safe">
											<a href="/pages/before/queryPassword.jsp" class="" target="_blank"
                                               clstag="pageclick|keycount|login_pc_201804112|6">忘记密码</a>
										</span>
                                    </div>
                                </div>

                                <div class="item item-fore5">
                                    <div class="login-btn">
                                        <a onclick="beforeLogin()" class="btn-img btn-entry" id="loginsubmit" tabindex="6"
                                           clstag="pageclick|keycount|login_pc_201804112|12">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="qrcode-login" style="display: none">
                    <div class="mc">
                        <div class="qrcode-error-2016">
                            <div class="qrcode-error-mask">
                            </div>
                            <p class="err-cont">服务器出错</p>
                            <a href="javascript:void(0)" class="refresh-btn"
                               clstag="pageclick|keycount|login_pc_201804112|11">刷新</a>
                        </div>
                        <div class="qrcode-main">
                            <div class="qrcode-img">
                                <img src="//qr.m.jd.com/show?appid=133&size=147&t=" alt="">
                            </div>
                            <div class="qrcode-help" style="display: none; "></div>
                        </div>
                        <div class="qrcode-panel">
                            <ul>
                                <li class="fore1">
                                    <span>打开</span>
                                    <a href="/uc/links?tag=apps" target="_blank"
                                       clstag="pageclick|keycount|201607144|9">
                                        <span class="red">手机京东</span></a>
                                </li>
                                <li>扫描二维码</li>
                            </ul>
                        </div>
                        <div class="coagent qr-coagent" id="qrCoagent">
                            <ul>
                                <li><b></b><em>免输入</em></li>
                                <li><b class="faster"></b><em>更快&nbsp;</em></li>
                                <li><b class="more-safe"></b><em>更安全</em></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="coagent" id="kbCoagent">
                    <ul>
                        <%--<li>--%>
                        <%--<b></b>--%>
                        <%--<a href="javascript:void(0)"--%>
                        <%--onclick="window.location='//qq.jd.com/new/qq/login.aspx'+window.location.search;return false;"--%>
                        <%--clstag="pageclick|keycount|login_pc_201804112|3" class="pdl"><b--%>
                        <%--class="QQ-icon"></b><span>QQ</span></a>--%>
                        <%--<span class="line">|</span>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                        <%--<a href="javascript:void(0)"--%>
                        <%--onclick="window.location='//qq.jd.com/new/wx/login.action'+window.location.search;return false;"--%>
                        <%--clstag="pageclick|keycount|login_pc_201804112|4" class="pdl"><b--%>
                        <%--class="weixin-icon"></b><span>微信</span></a>--%>
                        <%--</li>--%>
                        <li class="extra-r">
                            <div>
                                <div class="regist-link"><a
                                        href="/pages/before/register.jsp"
                                        clstag="pageclick|keycount|login_pc_201804112|5"
                                        target="_blank"><b></b>立即注册</a></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="login-banner"  style="background: url('/img/image/login.jpg')" clstag="pageclick|keycount|20150112ABD|46">
            <div class="w">
                <div id="banner-bg"  class="i-inner"
                >
                </div>
            </div>
        </div>
    </div>
</div>
<div class="w">
</div>
<script type="text/javascript" src="//misc.360buyimg.com/jdf/1.0.0/unit/base/1.0.0/base.js"></script>
<script type="text/javascript" src="/new/js/jdJsencrypt.min.js"></script>
<script type="text/javascript" src="/new/misc/js/login2016.js?v=201702221137"></script>
</body>
<script>
    function beforeLogin() {
        var loginName = $("#loginname").val();
        var password  =  $("#nloginpwd").val();
        $.post("/before/login",{"userName":loginName,"password":password},function (data) {
            var obj = JSON.parse(data);
            if(obj.flag == 1){
                $("#msg").html(obj.msg).css({"color": "red","font-size":"15px"});
            }else {
                window.location.href = "/before/main";
            }
        })
    }
    function loginNameClear(){
        $("#loginname").val('')
    }
</script>
</html>