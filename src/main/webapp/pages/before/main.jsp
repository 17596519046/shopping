<%@ page import="com.rich.pojo.SystemUser" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf8" version="1">
    <title>豫予-正品低价、品质保障、配送及时、轻松购物！</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <meta name="description"
          content="京东JD.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!">
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,京东">
    <link rel="icon" href="//www.jd.com/favicon.ico" mce_href="//www.jd.com/favicon.ico" type="image/x-icon">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">

    <!--[if lte IE 6]>
    <script src="//misc.360buyimg.com/mtd/pc/index/home/ie6tip.min.js"></script>
    <![endif]-->
    <!--[if IE 8]>
    <script src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/lib/polyfill/index.js"></script>
    <![endif]-->

    <link href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/first-screen.chunk.css" rel="stylesheet">
    <link href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/index.chunk.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/promotional-activity-top.chunk.css">
    <script charset="utf-8"
            src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/promotional-activity-top.chunk.js"></script>
    <script charset="utf-8" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/legacy.chunk.js"></script>
    <script async="" src="//h5.360buyimg.com/ws_js/gatherInfo.js"></script>
    <link rel="stylesheet" type="text/css"
          href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/seckill.chunk.css">
    <script charset="utf-8" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/seckill.chunk.js"></script>
    <link rel="stylesheet" type="text/css"
          href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/core1.chunk.css">
    <script charset="utf-8" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/core1.chunk.js"></script>
    <link rel="stylesheet" type="text/css"
          href="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/nice_goods.chunk.css">
    <script charset="utf-8" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/nice_goods.chunk.js"></script>
    <script charset="utf-8" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/sidePopMenu.chunk.js"></script>
</head>
<%
    SystemUser user= (SystemUser) request.getSession().getAttribute("user");
    int userId = 0;
    if(null != user){
        userId = user.getId();
    }
%>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<link href="http://misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/first-screen.chunk.css" rel="stylesheet"/>
<link href="http://misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/index.chunk.css" rel="stylesheet"/>
<script>
    function search() {
        var key = $("#key").val();
        window.location.href = '/before/main?name='+key;
    }

    //    关闭顶部推广
    function closeTop() {
        $("#J_promotional-top").hide();
    }
    function mySelf() {
        var userId = $("#userId").val();
        if(userId == 0){
            window.location.href = "/pages/before/login.jsp";
        }else{
            window.location.href = "/before/selectMySelfBuyCarInfo?userId="+userId
        }
    }
    function myselfOrder() {
        var userId = $("#userId").val();
        if(userId == 0){
            window.location.href = "/pages/before/login.jsp";
        }else{
            window.location.href = "/before/selectMySelfOrderInfo?userId="+userId
        }
    }
    function loginOut() {
        $.post('/before/loginOut',{},function () {
            window.location.href = "/before/main";
        })
    }
    function clickArea(area) {
        var key = $("#key").val();
        window.location.href = "/before/main?name="+key+"&area="+area;
    }
</script>
<body>
<input id="userId" type="hidden" value="<%=userId%>">
<!--无障碍占位-->
<div id="J_accessibility"></div>
<!--顶通占位 -->
<div id="J_promotional-top">
    <%--<a href="#" target="_blank"--%>
    <a href="#"
       style="background-color: #6e4b2f" aria-label="顶部推广" class="promotional-top"
       clstag="h|keycount|head|adtop_04">
        <div class="jd_container"
             style="background-image: url('/img/image/title.jpg');">
            <i class="iconfont JD_close-button--square" onclick="closeTop()" tabindex="0" aria-label="关闭顶部推广"></i></div>
    </a>
</div>
<div id="shortcut">
<div class="w">
    <ul class="fl" clstag="h|keycount|head|topbar_01">
        <li class="shortcut_btn dropdown" id="ttbar-mycity"><a href="javascript:void(0);" id="areamini"
                                                               class="dt cw-icon ui-areamini-text-wrap" style=""
                                                               aria-haspopup="true" aria-label="地区" role="button"><i
                class="iconfont iconfont-location"></i><span class="ui-areamini-text" data-id="7"
                                                              title="河南">${area}</span></a>
            <div class="dd dropdown-layer" tabindex="-1" area-labelledby="areamini" role="menu">
                <div class="dd-spacer"></div>
                <div class="ui-areamini-content-wrap" style="left: auto;">
                    <div class="ui-areamini-content">
                        <div class="ui-areamini-content-list">
                            <c:forEach var="vo" items="${areaList}" varStatus="i">
                            <div class="item"><a data-id="1" href="javascript:void(0)" role="menuitem"
                                         onclick="clickArea('${vo.area}')"    class="${vo.area eq area ?'selected':''}"    tabindex="-1">${vo.area}</a></div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul>
    <ul class="fr">
        <li class="fore1 dropdown" id="ttbar-login" clstag="h|keycount|head|topbar_02">
            <c:choose>
                <c:when test="${user.userName eq null}">
                    <a href="/pages/before/login.jsp" class="link-login">你好，请登录</a>
                    &nbsp;&nbsp;<a
                    href="/pages/before/register.jsp" class="link-regist style-red">免费注册</a>
                </c:when>
                <c:otherwise>
                    <a href="/pages/before/mySelfInfo.jsp" class="link-login">${user.userName}</a>
                    &nbsp;&nbsp; <a href="#" onclick="myselfOrder()" class="link-login">我的订单</a>
                    &nbsp;&nbsp; <a href="/pages/before/myselfAddress.jsp" class="link-login">收货地址</a>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${user.userName eq null}">
                </c:when>
                <c:otherwise>
                    &nbsp;&nbsp; <a href="/before/loginOut" class="link-login">注销</a>
                </c:otherwise>
            </c:choose>
        </li>
    </ul>
</div>
</div>
<div id="header">
    <div class="w">
        <div id="logo" class="logo">
            <h1 class="logo_tit">
                <a href="#"
                   style="background-image: url('/img/image/yu.jpg');background-size: cover;background-position: 0px -35px"
                   class="logo_tit_lk" clstag="h|keycount|head|logo_01">京东</a>
                <%--<a href="#" class="logo_tit_lk" clstag="h|keycount|head|logo_01">京东</a>--%>
            </h1>
            <h2 class="logo_subtit">京东,多快好省</h2>
            <div class="logo_extend" clstag="h|keycount|head|logo_02"></div>
        </div>

        <div id="search">
            <div class="search-m">

                <div class="form" role="serachbox">
                    <%--<ul id="shelper" class="search-helper" style="display: none"></ul>--%>
                    <input clstag="h|keycount|head|search_c" type="text"
                           onkeydown="javascript:if(event.keyCode==13) search('key');" autocomplete="off" id="key"
                           accesskey="s" value="${name}"
                           style="width: 100%;height: 100%;background-color: white"
                           class="text"
                           aria-label="搜索"/>
                    <button clstag="h|keycount|head|search_a" onclick="search('key');return false;" class="button"
                            aria-label="搜索">
                        <i
                                class="iconfont">&#xe60b;</i></button>
                </div>

                <div id="settleup" class="dropdown" clstag="h|keycount|head|cart_null">
                    <div class="cw-icon">
                        <i class="iconfont">&#xe60c;</i>
                        <a href="#" onclick="mySelf()">我的购物车</a>
                        <%--<a target="_blank" href="#">我的购物车</a>--%>
                        <i class="ci-count" id="shopping-amount"></i>
                    </div>
                    <div class="dropdown-layer">
                        <div id="J_cart_pop">
                            <div class="cart_empty">
                                <i class="cart_empty_img"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="hotwords" clstag="h|keycount|head|search_d" role=""></div>
    </div>
</div>
<div id="J_feeds" style="background-color: #f4f4f4" aria-label="为你推荐" tabindex="0">
    <div class="more2">
        <div class="grid_c1 more2_inner" clstag="a">
            <div>
                <ul id="feedContent2" class="more2_list clearfix" role="tabpanel" aria-labelledby="feedTab2">
                    <c:forEach var="po" items="${list}" varStatus="i">
                        <form id="${po.id}goodsForm" action="/before/goodsDetail" method="post">
                            <input name="name" value="${po.name}" type="hidden">
                            <input name="img" value="${po.img}" type="hidden">
                            <input name="detail" value="${po.detail}" type="hidden">
                            <input name="price" value="${po.price}" type="hidden">
                            <input name="id" value="${po.id}" type="hidden">
                            <input name="num" value="${po.num}" type="hidden">
                            <li style="background-color: white" class="more2_item more2_item_good hover-on"><a
                                    class="more2_lk"
                                    href="#" onclick="submit('${po.id}')"
                                    clstag="h|keycount|feed|01#pd_004-a">
                                <div class="lazyimg lazyimg_loaded more2_img"><img
                                        src="${po.img}"
                                        class="lazyimg_img" alt=""></div>
                                <div class="more2_info"><p class="more2_info_name"><i
                                        class="more2_info_chosen"></i>${po.name}</p>
                                    <div class="more2_info_price more2_info_price_plus more2_info_price_newcomer">
                                        <div class="mod_price"><i>¥</i><span
                                                class="more2_info_price_txt">${po.price}</span></div>
                                    </div>
                                </div>
                                <script>
                                    function submit(s) {
                                        var name = s + "goodsForm";
                                        $("#" + name).submit();
                                    }
                                </script>
                            </a></li>
                        </form>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="J_footer" class="footer">
    <div class="mod_service" clstag="h|keycount|btm|btmnavi_null01">
        <div class="grid_c1 mod_service_inner">
            <ul class="mod_service_list">
                <li class="mod_service_item">
                    <div class="mod_service_unit"><h5 class="mod_service_tit mod_service_duo">多</h5>
                        <p class="mod_service_txt">品类齐全，轻松购物</p></div>
                </li>
                <li class="mod_service_item">
                    <div class="mod_service_unit"><h5 class="mod_service_tit mod_service_kuai">快</h5>
                        <p class="mod_service_txt">多仓直发，极速配送</p></div>
                </li>
                <li class="mod_service_item">
                    <div class="mod_service_unit"><h5 class="mod_service_tit mod_service_hao">好</h5>
                        <p class="mod_service_txt">正品行货，精致服务</p></div>
                </li>
                <li class="mod_service_item">
                    <div class="mod_service_unit"><h5 class="mod_service_tit mod_service_sheng">省</h5>
                        <p class="mod_service_txt">天天低价，畅选无忧</p></div>
                </li>
            </ul>
        </div>
    </div>
    <div class="mod_copyright">
        <div class="grid_c1 mod_copyright_inner"><p class="mod_copyright_links" clstag="h|keycount|btm|btmnavi_null03">
            <p class="mod_copyright_auth" clstag="h|keycount|btm|btmnavi_null07"><a
                    class="mod_copyright_auth_ico mod_copyright_auth_ico_2"
                    href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&amp;ampct=df&amp;amppa=294005"
                    target="_blank" rel="noopener noreferrer">可信网站信用评估</a><a
                    class="mod_copyright_auth_ico mod_copyright_auth_ico_3" href="http://www.cyberpolice.cn"
                    target="_blank" rel="noopener noreferrer">网络警察提醒你</a><a
                    class="mod_copyright_auth_ico mod_copyright_auth_ico_4"
                    href="https://search.szfw.org/cert/l/CX20120111001803001836" target="_blank"
                    rel="noopener noreferrer">诚信网站</a><a class="mod_copyright_auth_ico mod_copyright_auth_ico_5"
                                                         href="http://www.12377.cn/" target="_blank"
                                                         rel="noopener noreferrer">中国互联网举报中心</a><a
                    class="mod_copyright_auth_ico mod_copyright_auth_ico_6" href="http://www.12377.cn/node_548446.htm"
                    target="_blank" rel="noopener noreferrer">网络举报APP下载</a></p></div>
    </div>
</div>
<script type="text/javascript" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/runtime.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/index.chunk.js"></script>
</body>
</html>

