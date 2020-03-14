<%@ page import="com.rich.pojo.SystemUser" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String name = request.getParameter("name");
    String img = request.getParameter("img");
    String price = request.getParameter("price");
    String id = request.getParameter("id");
    SystemUser user= (SystemUser) request.getSession().getAttribute("user");
    int userId = 0;
    if(null != user){
        userId = user.getId();
    }
%>
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
    <link rel="stylesheet" type="text/css"
          href="//static.360buyimg.com/item/unite/1.0.95/components/??default/common/common.css,default/main/main.css,default/address/address.css,default/prom/prom.css,default/colorsize/colorsize.css,default/buytype/buytype.css,default/track/track.css,default/suits/suits.css,default/baitiao/baitiao.css,default/o2o/o2o.css,default/summary/summary.css,default/buybtn/buybtn.css,default/crumb/crumb.css,default/fittings/fittings.css,default/detail/detail.css"/>
    <link rel="stylesheet" type="text/css"
          href="//static.360buyimg.com/item/unite/1.0.95/components/??default/contact/contact.css,default/popbox/popbox.css,default/preview/preview.css,default/info/info.css,default/imcenter/imcenter.css,default/jdservice/jdservice.css,default/vehicle/vehicle.css,default/poprent/poprent.css,default/jdservicePlus/jdservicePlus.css,default/jdserviceF/jdserviceF.css"/>

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
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<link href="http://misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/first-screen.chunk.css" rel="stylesheet"/>
<link href="http://misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/css/index.chunk.css" rel="stylesheet"/>
<script>
    function regist() {

    }

    function login() {
        alert(456)
    }

    function search() {
        alert("搜索")
    }

    //    关闭顶部推广
    function closeTop() {
        $("#J_promotional-top").hide();
    }
</script>
<body>
<!--无障碍占位-->
<div id="J_accessibility"></div>
<!--顶通占位 -->
<div id="J_promotional-top">
    <%--<a href="#" target="_blank"--%>
</div>
<div id="shortcut">
    <div class="w">
        <ul class="fl" clstag="h|keycount|head|topbar_01">
            <li class="shortcut_btn dropdown" id="ttbar-mycity"><a href="javascript:void(0);" id="areamini"
                                                                   class="dt cw-icon ui-areamini-text-wrap" style=""
                                                                   aria-haspopup="true" aria-label="地区" role="button"><i
                    class="iconfont iconfont-location"></i><span class="ui-areamini-text" data-id="7"
                                                                  title="河南">河南</span></a>
                <div class="dd dropdown-layer" tabindex="-1" area-labelledby="areamini" role="menu">
                    <div class="dd-spacer"></div>
                    <div class="ui-areamini-content-wrap" style="left: auto;">
                        <div class="ui-areamini-content">
                            <div class="ui-areamini-content-list">
                                <div class="item"><a data-id="1" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">北京</a></div>
                                <div class="item"><a data-id="2" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">上海</a></div>
                                <div class="item"><a data-id="3" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">天津</a></div>
                                <div class="item"><a data-id="4" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">重庆</a></div>
                                <div class="item"><a data-id="5" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">河北</a></div>
                                <div class="item"><a data-id="6" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">山西</a></div>
                                <div class="item"><a data-id="7" href="javascript:void(0)" role="menuitem" tabindex="-1"
                                                     class="selected">河南</a></div>
                                <div class="item"><a data-id="8" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">辽宁</a></div>
                                <div class="item"><a data-id="9" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">吉林</a></div>
                                <div class="item"><a data-id="10" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">黑龙江</a></div>
                                <div class="item"><a data-id="11" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">内蒙古</a></div>
                                <div class="item"><a data-id="12" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">江苏</a></div>
                                <div class="item"><a data-id="13" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">山东</a></div>
                                <div class="item"><a data-id="14" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">安徽</a></div>
                                <div class="item"><a data-id="15" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">浙江</a></div>
                                <div class="item"><a data-id="16" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">福建</a></div>
                                <div class="item"><a data-id="17" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">湖北</a></div>
                                <div class="item"><a data-id="18" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">湖南</a></div>
                                <div class="item"><a data-id="19" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">广东</a></div>
                                <div class="item"><a data-id="20" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">广西</a></div>
                                <div class="item"><a data-id="21" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">江西</a></div>
                                <div class="item"><a data-id="22" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">四川</a></div>
                                <div class="item"><a data-id="23" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">海南</a></div>
                                <div class="item"><a data-id="24" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">贵州</a></div>
                                <div class="item"><a data-id="25" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">云南</a></div>
                                <div class="item"><a data-id="26" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">西藏</a></div>
                                <div class="item"><a data-id="27" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">陕西</a></div>
                                <div class="item"><a data-id="28" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">甘肃</a></div>
                                <div class="item"><a data-id="29" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">青海</a></div>
                                <div class="item"><a data-id="30" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">宁夏</a></div>
                                <div class="item"><a data-id="31" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">新疆</a></div>
                                <div class="item"><a data-id="52993" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">港澳</a></div>
                                <div class="item"><a data-id="32" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">台湾</a></div>
                                <div class="item"><a data-id="84" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">钓鱼岛</a></div>
                                <div class="item"><a data-id="53283" href="javascript:void(0)" role="menuitem"
                                                     tabindex="-1">海外</a></div>
                            </div>
                        </div>
                    </div>
                    <%--<div class="areamini_inter">--%>
                    <%--<div class="areamini_inter_split"></div>--%>
                    <%--<p class="areamini_inter_desc">地区专享版本</p>--%>
                    <%--<ul class="areamini_inter_list">--%>
                    <%--<li class="areamini_inter_item">--%>
                    <%--<a class="areamini_inter_lk" href="javascript: void(0)" data-ver-id="2"--%>
                    <%--data-area="52993" data-ver-href="//hk.jd.com" clstag="h|keycount|head|topbar_01hk"--%>
                    <%--role="menuitem" tabindex="-1">--%>
                    <%--<div class="areamini_inter_name">中國港澳</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--</div>--%>
                    <%--<div class="areamini_inter">--%>
                    <%--<div class="areamini_inter_split"></div>--%>
                    <%--<p class="areamini_inter_desc">Available Sites</p>--%>
                    <%--<ul class="areamini_inter_list">--%>
                    <%--<li class="areamini_inter_item">--%>
                    <%--<a class="areamini_inter_lk" href="//www.joybuy.com/?source=1&amp;visitor_from=2"--%>
                    <%--target="_blank" clstag="h|keycount|head|topbar_0101" role="menuitem" tabindex="-1">--%>
                    <%--<div class="areamini_inter_ico areamini_inter_ico_global"></div>--%>
                    <%--<div class="areamini_inter_name">Global Site</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--<li class="areamini_inter_item">--%>
                    <%--<a class="areamini_inter_lk" href="//www.jd.ru/?source=1&amp;visitor_from=2"--%>
                    <%--target="_blank" clstag="h|keycount|head|topbar_0102" role="menuitem" tabindex="-1">--%>
                    <%--<div class="areamini_inter_ico areamini_inter_ico_russia"></div>--%>
                    <%--<div class="areamini_inter_name">Сайт России</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--<li class="areamini_inter_item">--%>
                    <%--<a class="areamini_inter_lk" href="//www.jd.id/?source=1&amp;visitor_from=2"--%>
                    <%--target="_blank" clstag="h|keycount|head|topbar_0103" role="menuitem" tabindex="-1">--%>
                    <%--<div class="areamini_inter_ico areamini_inter_ico_indonesia"></div>--%>
                    <%--<div class="areamini_inter_name">Situs Indonesia</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--<li class="areamini_inter_item">--%>
                    <%--<a class="areamini_inter_lk" href="//www.joybuy.es/?source=1&amp;visitor_from=2"--%>
                    <%--target="_blank" clstag="h|keycount|head|topbar_0104" role="menuitem" tabindex="-1">--%>
                    <%--<div class="areamini_inter_ico areamini_inter_ico_spain"></div>--%>
                    <%--<div class="areamini_inter_name">Sitio de España</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--<li class="areamini_inter_item">--%>
                    <%--<a class="areamini_inter_lk" href="//www.jd.co.th/?source=1&amp;visitor_from=2"--%>
                    <%--target="_blank" clstag="h|keycount|head|topbar_0105" role="menuitem" tabindex="-1">--%>
                    <%--<div class="areamini_inter_ico areamini_inter_ico_thailand"></div>--%>
                    <%--<div class="areamini_inter_name">เว็บไซต์ประเทศไทย</div>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--</div>--%>
                </div>
            </li>
        </ul>
        <ul class="fr">
            <li class="fore1 dropdown" id="ttbar-login" clstag="h|keycount|head|topbar_02">
                <a href="javascript:login();" class="link-login">你好，请登录</a>&nbsp;&nbsp;<a
                    href="javascript:regist();" class="link-regist style-red">免费注册</a>
            </li>
            <%--<li class="spacer"></li>--%>
            <%--<li class="fore2" clstag="h|keycount|head|topbar_03">--%>
            <%--<div class="dt"><a target="_blank" href="//order.jd.com/center/list.action">我的订单</a></div>--%>
            <%--</li>--%>
            <%--<li class="spacer"></li>--%>
            <%--<li class="fore3 dropdown" id="ttbar-myjd" clstag="h|keycount|head|topbar_04">--%>
            <%--<div class="dt cw-icon"><a target="_blank" href="//home.jd.com/">我的京东</a><i--%>
            <%--class="iconfont">&#xe610;</i><i--%>
            <%--class="ci-right"><s>◇</s></i></div>--%>
            <%--<div class="dd dropdown-layer"></div>--%>
            <%--</li>--%>
            <%--<li class="spacer"></li>--%>
            <%--<li class="fore4" clstag="h|keycount|head|topbar_05">--%>
            <%--<div class="dt"><a target="_blank" href="//vip.jd.com/">京东会员</a></div>--%>
            <%--</li>--%>
            <%--<li class="spacer"></li>--%>
            <%--<li class="fore5" clstag="h|keycount|head|topbar_06">--%>
            <%--<div class="dt"><a target="_blank" href="//b.jd.com/">企业采购</a></div>--%>
            <%--</li>--%>
            <%--<li class="spacer"></li>--%>
            <%--<li class="fore8 dropdown" id="ttbar-serv" clstag="h|keycount|head|topbar_07">--%>
            <%--<div class="dt cw-icon">客户服务<i class="iconfont">&#xe610;</i><i class="ci-right"><s>◇</s></i></div>--%>
            <%--<div class="dd dropdown-layer"></div>--%>
            <%--</li>--%>
            <%--<li class="spacer"></li>--%>
            <%--<li class="fore9 dropdown" id="ttbar-navs" clstag="h|keycount|head|topbar_08">--%>
            <%--<div class="dt cw-icon">网站导航<i class="iconfont">&#xe610;</i><i class="ci-right"><s>◇</s></i></div>--%>
            <%--<div class="dd dropdown-layer"></div>--%>
            <%--</li>--%>
            <%--<li class="spacer"></li>--%>
            <%--<li class="fore10 mobile" id="J_mobile" clstag="h|keycount|head|topbar_09">--%>
            <%--<div class="dt mobile_txt">手机京东</div>--%>
            <%--<div class="mobile_static">--%>
            <%--<div class="mobile_static_qrcode"></div>--%>
            <%--</div>--%>
            <%--<div id='J_mobile_pop' class='mod_loading mobile_pop'>--%>
            <%--</div>--%>
            <%--</li>--%>
        </ul>
    </div>


</div>
<div id="header">
    <div class="w">
        <div id="logo" class="logo">
            <h1 class="logo_tit">
                <%--<a href="#" style="background-image: url('/img/image/1.jpg.jpg')" class="logo_tit_lk" clstag="h|keycount|head|logo_01">京东</a>--%>
                <a href="#" class="logo_tit_lk" clstag="h|keycount|head|logo_01">京东</a>
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
                           accesskey="s"
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
                        <a href="#">我的购物车</a>
                        <%--<a target="_blank" href="#">我的购物车</a>--%>
                        <i class="ci-count" id="shopping-amount"></i>
                    </div>
                    <div class="dropdown-layer">
                        <div id="J_cart_pop">
                            <div class="cart_empty">
                                <i class="cart_empty_img"></i>
                                购物车中还没有商品，赶紧选购吧！
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="w">
    <div class="product-intro clearfix">
        <div class="preview-wrap">
            <div class="preview" id="preview">
                <div id="spec-n1" class="jqzoom main-img" data-big="1" clstag="shangpin|keycount|product|mainpic_fz">
                    <%--<ul class="preview-btn J-preview-btn">--%>
                    <%--<li>--%>
                    <%--<span class="video-icon J-video-icon" clstag="shangpin|keycount|product|picvideo" style=""></span>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <img id="spec-img"
                         <%--data-origin="//img14.360buyimg.com/n1/jfs/t18325/65/199693094/405715/6f845190/5a61d111N0e4f0567.jpg"--%>
                         <%--alt="卡罗莱（CALUOLA）全自动机械表男士手表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 全黑钢带 CA1069【爆款有夜光】"--%>
                         src="<%=img%>"
                         width="350">
                    <%--<i></i>--%>
                    <div id="belt"></div>
                </div>
                <div class="video" id="v-video" data-vu="478474"
                     style="display: none; width: 350px; height: 350px; z-index: 6;">
                    <div class="J-v-player"></div>
                    <a href="#none" class="close-video J-close" clstag="shangpin|keycount|product|closepicvideo"></a>
                </div>
                <script>
                    (function (doc, cfg) {
                        var img = doc.getElementById('spec-img');
                        var src = img.getAttribute('data-origin');
                        var nsz = 300;

                        if ((!cfg.wideVersion || !cfg.compatible) && !cfg.product.ctCloth) {
                            img.setAttribute('width', nsz);
                            /*img.setAttribute('height', nsz);*/
                            img.setAttribute('src', src.replace('s450x450', 's' + nsz + 'x' + nsz));
                        } else {
                            img.setAttribute('src', src);
                        }

                        if (cfg.product.ctCloth) {
                            if (!cfg.wideVersion || !cfg.compatible) {
                                img.setAttribute('width', nsz);
                            }
                        }
                    })(document, pageConfig);
                </script>
                <%--<div class="spec-list" clstag="shangpin|keycount|product|lunbotu_2">--%>
                <%--<a id="spec-forward" href="javascript:;" class="arrow-prev disabled"><i class="sprite-arrow-prev"></i></a>--%>
                <%--<a id="spec-backward" href="javascript:;" class="arrow-next"><i class="sprite-arrow-next"></i></a>--%>
                <%--<div id="spec-list" class="spec-items" style="position: relative; width: 290px; height: 54px; overflow: hidden;">--%>
                <%--<ul class="lh" style="position: absolute; width: 348px; height: 54px; top: 0px; left: 0px;">--%>
                <%--<li class="img-hover"><img alt="卡罗莱（CALUOLA）全自动机械表男士手表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 全黑钢带 CA1069【爆款有夜光】" src="//img14.360buyimg.com/n5/jfs/t18325/65/199693094/405715/6f845190/5a61d111N0e4f0567.jpg" data-url="jfs/t18325/65/199693094/405715/6f845190/5a61d111N0e4f0567.jpg" data-img="1" width="50" height="50"></li>--%>
                <%--<li><img alt="卡罗莱（CALUOLA）全自动机械表男士手表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 全黑钢带 CA1069【爆款有夜光】" src="//img14.360buyimg.com/n5/jfs/t23647/313/646175272/169160/e0a38eaa/5b3b564eN4a56eadf.jpg" data-url="jfs/t23647/313/646175272/169160/e0a38eaa/5b3b564eN4a56eadf.jpg" data-img="1" width="50" height="50"></li>--%>
                <%--<li><img alt="卡罗莱（CALUOLA）全自动机械表男士手表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 全黑钢带 CA1069【爆款有夜光】" src="//img14.360buyimg.com/n5/jfs/t12667/4/301087735/395765/609fdf3f/5a08299eN3547cb6c.jpg" data-url="jfs/t12667/4/301087735/395765/609fdf3f/5a08299eN3547cb6c.jpg" data-img="1" width="50" height="50"></li>--%>
                <%--<li><img alt="卡罗莱（CALUOLA）全自动机械表男士手表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 全黑钢带 CA1069【爆款有夜光】" src="//img14.360buyimg.com/n5/jfs/t12238/131/305130609/373590/92bbe987/5a08299aN3a2f3c57.jpg" data-url="jfs/t12238/131/305130609/373590/92bbe987/5a08299aN3a2f3c57.jpg" data-img="1" width="50" height="50"></li>--%>
                <%--<li><img alt="卡罗莱（CALUOLA）全自动机械表男士手表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 全黑钢带 CA1069【爆款有夜光】" src="//img14.360buyimg.com/n5/jfs/t12292/285/293404567/475734/bbc25eec/5a08299eN5e861305.jpg" data-url="jfs/t12292/285/293404567/475734/bbc25eec/5a08299eN5e861305.jpg" data-img="1" width="50" height="50"></li>--%>
                <%--<li><img alt="卡罗莱（CALUOLA）全自动机械表男士手表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 全黑钢带 CA1069【爆款有夜光】" src="//img14.360buyimg.com/n5/jfs/t12703/23/298370434/218155/cb355a7/5a08299dNfe62c201.jpg" data-url="jfs/t12703/23/298370434/218155/cb355a7/5a08299dNfe62c201.jpg" data-img="1" width="50" height="50"></li>--%>
                <%--</ul>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<div class="preview-info">--%>
                    <%--<div class="left-btns">--%>
                        <%--<a class="follow J-follow" data-id="1048468099" href="#none"--%>
                           <%--clstag="shangpin|keycount|product|guanzhushangpin_2">--%>
                            <%--<i class="sprite-follow-sku"></i><em>关注</em>--%>
                        <%--</a>--%>
                        <%--<a class="share J-share" href="#none" clstag="shangpin|keycount|product|share_2">--%>
                            <%--<i class="sprite-share"></i><em>分享</em>--%>
                        <%--</a>--%>
                    <%--</div>--%>
                    <%--<div class="right-btns">--%>
                        <%--<a class="report-btn" href="//jubao.jd.com/index.html?skuId=1048468099" target="_blank"--%>
                           <%--clstag="shangpin|keycount|product|jubao">举报</a>--%>
                    <%--</div>--%>
                <%--</div>--%>

            </div>
        </div>
        <div class="itemInfo-wrap">
            <input id="goodsId" type="hidden"  value="<%=id%>" >
            <input id="userId" type="hidden" value="<%=userId%>">
            <div class="sku-name">
                <%=name%>
            </div>
            <%--<div class="news">--%>
                <%--<div class="item hide" id="p-ad" clstag="shangpin|keycount|product|slogana" data-hook="hide"></div>--%>
                <%--<div class="item hide" id="p-ad-phone" clstag="shangpin|keycount|product|sloganb"--%>
                     <%--data-hook="hide"></div>--%>
            <%--</div>--%>

            <div class="summary summary-first">
                <div class="summary-price-wrap">
                    <div class="summary-price J-summary-price">
                        <div class="dt">京 东 价</div>
                        <div class="dd">
                            <span class="p-price"><span>￥</span><span class="price J-p-1048468099"><%=price%></span></span><span
                                class="pricing">
                            <%--[<del id="page_hx_price">￥2388.00</del>]--%>
                        </span>
                            <%--<a class="notice J-notify-sale" data-type="1" data-sku="1048468099" href="#none"--%>
                               <%--clstag="shangpin|keycount|product|jiangjia_2">降价通知</a>--%>
                            <div class="fans-price J-fans-price hide" style="display: none;">
                                <span class="p-price-fans">
                                    <span class="price J-p-f-1048468099"></span>
                                </span>
                                <img src="//img30.360buyimg.com/devfe/jfs/t17683/96/2616723497/1348/5d49daba/5afe6d90Nc2d9965a.png"
                                     alt="fans" class="fans-icon">
                                <span class="text">关注店铺，即享粉丝价</span>
                            </div>

                            <!-- 高端品 限时特惠start，这段代码中的样式，是需要改的，请前端同学定义样式。还有用js代码，完成对应的需求 -->
                            <span class="J-xsth-sale" style="display: none;">
                                    <a href="#none" class="J-xsth-panel"
                                       clstag="shangpin|keycount|product|xianshitehui">限时特惠<s
                                            class="s-arrow">&gt;</s></a>
                                    <i class="sprite-question"></i>
                                </span>
                            <!-- 高端品 限时特惠end -->


                            <div class="plus-price J-plus-price hide" style="display: none;">
                                    <span class="p-price-plus">
                                        <span class="price J-p-p-1048468099"></span>
                                    </span>
                                <a class="plus-icon-linkwrap" clstag="shangpin|keycount|product|plusicon"
                                   href="//plus.jd.com/index" target="_blank"><img
                                        src="//img10.360buyimg.com/da/jfs/t5731/317/890792506/848/391b9a15/59224a28N48552ed2.png"
                                        alt="plus" class="plus-icon"></a>
                                <span class="text"><strong>PLUS会员</strong>专享价</span>
                                <a clstag="shangpin|keycount|product|whatisplus" href="//plus.jd.com/index"
                                   target="_blank">现在开通PLUS会员享限时特惠 &gt;&gt;</a>
                            </div>
                            <div class="user-price J-user-price hide" style="display: none;">
                                    <span class="p-price-user">
                                        <span class="price J-p-s-1048468099"></span>
                                    </span>
                                <img src="//img14.360buyimg.com/devfe/jfs/t5728/113/4603623007/244/a159e46d/59535259N6eed475d.png"
                                     alt="sam's" class="sam-icon">

                                <span class="text">您购买此商品可享受专属价</span>

                                <i class="sprite-question"></i>
                            </div>
                        </div>
                    </div>

                    <!-- 分期用分区价格展示需求 start -->
                    <!-- 分期用分区价格展示需求 end -->

                    <%--<div class="summary-info J-summary-info clearfix">--%>
                        <%--<div id="comment-count" class="comment-count item fl"--%>
                             <%--clstag="shangpin|keycount|product|pingjiabtn_2">--%>
                            <%--<p class="comment">累计评价</p>--%>
                            <%--<a class="count J-comm-1048468099" href="#none">1.4万+</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <div id="summary-quan" class="li p-choose hide" clstag="shangpin|keycount|product|lingquan">
                        <div class="dt">优 惠 券</div>
                        <div class="dd">
                            <dl>
                                <dt class="fl"></dt>
                                <dd class="lh"><a class="J-open-tb" href="#none"> <span class="quan-item"
                                                                                        title="仅可购买卡罗莱旗舰店商品 有效期2020-03-09至2020-03-31">                                    <s></s><b></b>                                        <span
                                        class="text">满1088减80</span>                                </span> <span
                                        class="quan-item" title="仅可购买卡罗莱旗舰店商品 有效期2020-03-09至2020-03-31">                                    <s></s><b></b>                                        <span
                                        class="text">满1688减100</span>                                </span> <span
                                        class="quan-item" title="仅可购买卡罗莱旗舰店商品 有效期2020-03-09至2020-03-31">                                    <s></s><b></b>                                        <span
                                        class="text">满2188减150</span>                                </span> <span
                                        class="more-btn">更多&gt;&gt;</span> </a></dd>
                            </dl>
                        </div>
                    </div>
                    <%--<div id="J-summary-top" class="summary-top" clstag="shangpin|keycount|product|cuxiao">--%>
                        <%--<div id="summary-promotion" class="summary-promotion" data-hook="hide">--%>
                            <%--<div class="dt">促　　销</div>--%>
                            <%--<div class="dd J-prom-wrap p-promotions-wrap">--%>
                                <%--<div class="p-promotions">--%>
                                    <%--<ins id="prom-mbuy"--%>
                                         <%--data-url="https://cd.jd.com/qrcode?skuId=1048468099&amp;location=3&amp;isWeChatStock=2"></ins>--%>
                                    <%--<ins id="prom-car-gift"></ins>--%>
                                    <%--<ins id="prom-gift" clstag="shangpin|keycount|product|zengpin_1"--%>
                                         <%--style="display: none;"></ins>--%>
                                    <%--<ins id="prom-fujian" clstag="shangpin|keycount|product|fujian_1"></ins>--%>
                                    <%--<ins id="prom"></ins>--%>
                                    <%--<ins id="prom-one">--%>
                                        <%--<div class="J-prom">--%>
                                            <%--<div class="prom-item" data-code="15"><em class="hl_red_bg">活动预告</em> <em--%>
                                                    <%--class="hl_red">03月11日 00:00 该商品参加跨店铺满减活动--%>
                                                <%--，每满300元，可减30元现金，最多可减100000元</em> <a--%>
                                                    <%--href="https://search.jd.com/Search?activity_id=50076423105"--%>
                                                    <%--clstag="shangpin|keycount|product|活动预告" target="_blank">详情 <s--%>
                                                    <%--class="s-arrow">&gt;&gt;</s> </a></div>--%>
                                        <%--</div>--%>
                                    <%--</ins>--%>
                                    <%--<ins id="prom-phone"></ins>--%>
                                    <%--<ins id="prom-phone-jjg"></ins>--%>
                                    <%--<ins id="prom-tips"></ins>--%>
                                    <%--<ins id="prom-quan"></ins>--%>
                                    <%--<div class="J-prom-more view-all-promotions" data-hook="hide"--%>
                                         <%--style="visibility: hidden;">--%>
                                        <%--<span class="prom-sum">展开促销</span>--%>
                                        <%--<a href="#none" class="view-link"><i class="sprite-arr-close"></i></a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </div>
            </div>

            <div class="summary p-choose-wrap">

                <%--<div id="summary-support" class="li hide" style="display: none;">--%>
                    <%--<div class="dt">增值业务</div>--%>
                    <%--<div class="dd">--%>
                        <%--<ul class="choose-support lh">--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<div class="summary-stock" clstag="shangpin|keycount|product|quyuxuanze_2">--%>
                    <%--<div class="dt">配 送 至</div>--%>
                    <%--<div class="dd">--%>
                        <%--<div class="store clearfix">--%>
                            <%--<div class="stock-address">--%>
                                <%--<div id="area1" class="ui-area-wrap ui-area-oversea-mode">--%>
                                    <%--<div class="ui-area-text-wrap"><!--展示内容主体-->--%>
                                        <%--<div class="ui-area-text" data-id="3-51035-39620" title="天津东丽区全境">天津东丽区全境</div>--%>
                                        <%--<!--显示被选中的地区--> <b></b><!--小箭头-->            </div>--%>
                                    <%--<div class="ui-area-content-wrap ui-area-common-area-mode ui-area-w-max"--%>
                                         <%--style="left: 0px;">--%>
                                        <%--<div class="ui-area-module-wrap ui-area-common-wrap">--%>
                                            <%--<div class="ui-area-module-title">常用地址<b></b></div>--%>
                                            <%--<div class="ui-area-common-content">--%>
                                                <%--<ul>--%>
                                                    <%--<li><a data-aid="815790747" href="javascript:"--%>
                                                           <%--title="上海浦东新区金桥镇上海市浦东新区金桥唐陆路600号，寓青春公寓220室"--%>
                                                           <%--data-localid="2-2830-51807-0"><span--%>
                                                            <%--class="ui-area-common-c-i-l">孙博</span><span--%>
                                                            <%--class="ui-area-common-c-i-r">上海浦东新区金桥镇上海市浦东新区金桥唐陆路600号，寓青春公寓220室</span></a>--%>
                                                    <%--</li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="ui-area-module-wrap ui-area-select-wrap ui-area-open">--%>
                                            <%--<div class="ui-area-module-title">选择新地址<b></b></div>--%>
                                            <%--<div class="ui-area-select-main-wrap"><!--弹出内容主体-->--%>
                                                <%--<div class="ui-area-tab"><a class="ui-switchable-item" data-id="3"--%>
                                                                            <%--title="天津"><em>天津</em><i></i></a><a--%>
                                                        <%--class="ui-switchable-item" data-id="51035"--%>
                                                        <%--title="东丽区"><em>东丽区</em><i></i></a><a--%>
                                                        <%--class="ui-switchable-item ui-area-current" data-id="39620"--%>
                                                        <%--title="全境"><em>全境</em><i></i></a></div><!--省市区选择标签-->--%>
                                                <%--<div class="ui-area-content">--%>
                                                    <%--<div style="display: none;" class="ui-switchable-panel"--%>
                                                         <%--data-index="0">--%>
                                                        <%--<ul class="ui-area-content-list">--%>
                                                            <%--<li><a data-id="1" href="javascript:void(0)">北京</a></li>--%>
                                                            <%--<li><a data-id="2" href="javascript:void(0)">上海</a></li>--%>
                                                            <%--<li class="ui-area-current"><a data-id="3"--%>
                                                                                           <%--href="javascript:void(0)">天津</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="4" href="javascript:void(0)">重庆</a></li>--%>
                                                            <%--<li><a data-id="5" href="javascript:void(0)">河北</a></li>--%>
                                                            <%--<li><a data-id="6" href="javascript:void(0)">山西</a></li>--%>
                                                            <%--<li><a data-id="7" href="javascript:void(0)">河南</a></li>--%>
                                                            <%--<li><a data-id="8" href="javascript:void(0)">辽宁</a></li>--%>
                                                            <%--<li><a data-id="9" href="javascript:void(0)">吉林</a></li>--%>
                                                            <%--<li><a data-id="10" href="javascript:void(0)">黑龙江</a></li>--%>
                                                            <%--<li><a data-id="11" href="javascript:void(0)">内蒙古</a></li>--%>
                                                            <%--<li><a data-id="12" href="javascript:void(0)">江苏</a></li>--%>
                                                            <%--<li><a data-id="13" href="javascript:void(0)">山东</a></li>--%>
                                                            <%--<li><a data-id="14" href="javascript:void(0)">安徽</a></li>--%>
                                                            <%--<li><a data-id="15" href="javascript:void(0)">浙江</a></li>--%>
                                                            <%--<li><a data-id="16" href="javascript:void(0)">福建</a></li>--%>
                                                            <%--<li><a data-id="17" href="javascript:void(0)">湖北</a></li>--%>
                                                            <%--<li><a data-id="18" href="javascript:void(0)">湖南</a></li>--%>
                                                            <%--<li><a data-id="19" href="javascript:void(0)">广东</a></li>--%>
                                                            <%--<li><a data-id="20" href="javascript:void(0)">广西</a></li>--%>
                                                            <%--<li><a data-id="21" href="javascript:void(0)">江西</a></li>--%>
                                                            <%--<li><a data-id="22" href="javascript:void(0)">四川</a></li>--%>
                                                            <%--<li><a data-id="23" href="javascript:void(0)">海南</a></li>--%>
                                                            <%--<li><a data-id="24" href="javascript:void(0)">贵州</a></li>--%>
                                                            <%--<li><a data-id="25" href="javascript:void(0)">云南</a></li>--%>
                                                            <%--<li><a data-id="26" href="javascript:void(0)">西藏</a></li>--%>
                                                            <%--<li><a data-id="27" href="javascript:void(0)">陕西</a></li>--%>
                                                            <%--<li><a data-id="28" href="javascript:void(0)">甘肃</a></li>--%>
                                                            <%--<li><a data-id="29" href="javascript:void(0)">青海</a></li>--%>
                                                            <%--<li><a data-id="30" href="javascript:void(0)">宁夏</a></li>--%>
                                                            <%--<li><a data-id="31" href="javascript:void(0)">新疆</a></li>--%>
                                                            <%--<li><a data-id="52993" href="javascript:void(0)">港澳</a></li>--%>
                                                            <%--<li><a data-id="32" href="javascript:void(0)">台湾</a></li>--%>
                                                            <%--<li><a data-id="84" href="javascript:void(0)">钓鱼岛</a></li>--%>
                                                            <%--<li><a data-id="53283" href="javascript:void(0)">海外</a></li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                    <%--<div style="display: none;" class="ui-switchable-panel"--%>
                                                         <%--data-index="1">--%>
                                                        <%--<ul class="ui-area-content-list">--%>
                                                            <%--<li class="ui-area-current"><a data-id="51035"--%>
                                                                                           <%--href="javascript:void(0)">东丽区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51036" href="javascript:void(0)">和平区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51037" href="javascript:void(0)">河北区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51038" href="javascript:void(0)">河东区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51039" href="javascript:void(0)">河西区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51040" href="javascript:void(0)">红桥区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51041" href="javascript:void(0)">蓟州区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51042" href="javascript:void(0)">静海区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51043" href="javascript:void(0)">南开区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51044" href="javascript:void(0)">滨海新区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51045" href="javascript:void(0)">西青区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51046" href="javascript:void(0)">武清区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51047" href="javascript:void(0)">津南区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51048" href="javascript:void(0)">汉沽区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51049" href="javascript:void(0)">大港区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51050" href="javascript:void(0)">北辰区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51051" href="javascript:void(0)">宝坻区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="51052" href="javascript:void(0)">宁河区</a>--%>
                                                            <%--</li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                    <%--<div style="display: block;"--%>
                                                         <%--class="ui-switchable-panel ui-switchable-panel-selected"--%>
                                                         <%--data-index="2">--%>
                                                        <%--<ul class="ui-area-content-list">--%>
                                                            <%--<li class="ui-area-current"><a data-id="39620"--%>
                                                                                           <%--href="javascript:void(0)">全境</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="long-area"><a data-id="55895"--%>
                                                                                     <%--href="javascript:void(0)">天津空港经济区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="long-area"><a data-id="55896"--%>
                                                                                     <%--href="javascript:void(0)">天津航空物流区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55897" href="javascript:void(0)">东丽湖街道</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="long-area"><a data-id="55898"--%>
                                                                                     <%--href="javascript:void(0)">东丽区开发区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55899" href="javascript:void(0)">丰年村街道</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="long-area"><a data-id="55900"--%>
                                                                                     <%--href="javascript:void(0)">服务滨海新区管委会</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55901" href="javascript:void(0)">华明街道</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55902" href="javascript:void(0)">金桥街道</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55903" href="javascript:void(0)">金钟街道</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55904" href="javascript:void(0)">军粮城街道</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li class="long-area"><a data-id="55905"--%>
                                                                                     <%--href="javascript:void(0)">天津开发区西区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55906" href="javascript:void(0)">万新街道</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55907" href="javascript:void(0)">无瑕街道</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55908" href="javascript:void(0)">新立街道</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55909" href="javascript:void(0)">张贵庄街道</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55910" href="javascript:void(0)">综合保税区</a>--%>
                                                            <%--</li>--%>
                                                            <%--<li><a data-id="55911" href="javascript:void(0)">华新街道</a>--%>
                                                            <%--</li>--%>
                                                        <%--</ul>--%>
                                                    <%--</div>--%>
                                                <%--</div><!--地区内容-->            </div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div id="store-prompt" class="store-prompt"><strong>有货</strong></div>--%>
                            <%--<div class="J-promise-icon promise-icon fl promise-icon-more"--%>
                                 <%--clstag="shangpin|keycount|product|promisefw_2" style="display: block;">--%>
                                <%--<div class="fl">支持</div>--%>
                                <%--<div class="services" id="ns_services">--%>
                                    <%--<div><a target="_blank" title="送运费险" href="//help.jd.com/user/issue/list-429.html"--%>
                                            <%--clstag="shangpin|keycount|product|promisefw_2">送运费险</a><i>|</i><a--%>
                                            <%--target="_blank" title="极速审核指商家为用户提供的针对售后退换货流程的专项服务，开通后售后服务单会在24H内审核完毕；"--%>
                                            <%--href="http://help.jd.com/user/issue/list-114-470.html"--%>
                                            <%--clstag="shangpin|keycount|product|promisefw_2">极速审核</a><i>|</i><a--%>
                                            <%--target="_blank" title="支持送货上门后再收款，支持现金、POS机刷卡等方式"--%>
                                            <%--href="//help.jd.com/user/issue/103-983.html"--%>
                                            <%--clstag="shangpin|keycount|product|promisefw_2">货到付款</a></div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="J-dcashDesc dcashDesc fl">免运费 <a title="了解配送费收取标准"--%>
                                                                         <%--href="//help.jd.com/user/issue/109-188.html"--%>
                                                                         <%--target="_blank"><i class="sprite-question"></i></a>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div id="summary-supply" class="li" style="">--%>
                    <%--<div class="dt">　　</div>--%>
                    <%--<div class="dd">--%>
                        <%--<div id="summary-service" class="summary-service" clstag="shangpin|keycount|product|fuwu_2">由<a--%>
                                <%--href="//caluola.jd.com" target="_blank" clstag="shangpin|keycount|product|bbtn"--%>
                                <%--class="hl_red">卡罗莱旗舰店</a>从 广东广州市 发货, 并提供售后服务.--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div id="summary-weight" class="li" style="display:none">--%>
                    <%--<div class="dt">重　　量</div>--%>
                    <%--<div class="dd"></div>--%>
                <%--</div>--%>
                <%--<div class="SelfAssuredPurchase li" id="J_SelfAssuredPurchase" style="display:none;"></div>--%>
                <%--<div class="summary-line"></div>--%>

                <%--<div id="choose-attrs">--%>
                    <%--<div id="choose-attr-1" class="li p-choose" data-type="颜色" data-idx="0">--%>
                        <%--<div class="dt ">选择颜色</div>--%>
                        <%--<div class="dd">--%>
                            <%--<div class="item" data-sku="1472715573" data-value="白面钢带 CA1069【爆款有夜光】"--%>
                                 <%--title="白面钢带 CA1069【爆款有夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-白面钢带 CA1069【爆款有夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img13.360buyimg.com/n9/s40x40_jfs/t14899/270/1864203413/267355/379e6507/5a61d101N8a1796d2.jpg"--%>
                                         <%--alt="白面钢带 CA1069【爆款有夜光】" width="40" height="40"><i>白面钢带 CA1069【爆款有夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item" data-sku="1048468100" data-value="金白皮带 CA1069【爆款有夜光】"--%>
                                 <%--title="金白皮带 CA1069【爆款有夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-金白皮带 CA1069【爆款有夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img10.360buyimg.com/n9/s40x40_jfs/t18427/33/179753475/343391/76a42764/5a61d10aNb364a5dc.jpg"--%>
                                         <%--alt="金白皮带 CA1069【爆款有夜光】" width="40" height="40"><i>金白皮带 CA1069【爆款有夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item  selected" data-sku="1048468099" data-value="全黑钢带 CA1069【爆款有夜光】"--%>
                                 <%--title="全黑钢带 CA1069【爆款有夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-全黑钢带 CA1069【爆款有夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img14.360buyimg.com/n9/s40x40_jfs/t18325/65/199693094/405715/6f845190/5a61d111N0e4f0567.jpg"--%>
                                         <%--alt="全黑钢带 CA1069【爆款有夜光】" width="40" height="40"><i>全黑钢带 CA1069【爆款有夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item" data-sku="1048468098" data-value="黑面皮带 CA1069【爆款有夜光】"--%>
                                 <%--title="黑面皮带 CA1069【爆款有夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-黑面皮带 CA1069【爆款有夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img13.360buyimg.com/n9/s40x40_jfs/t1/21758/32/9577/149172/5c7f84f4E180f9654/4b980298fa26f0f8.jpg"--%>
                                         <%--alt="黑面皮带 CA1069【爆款有夜光】" width="40" height="40"><i>黑面皮带 CA1069【爆款有夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item" data-sku="1048468097" data-value="银壳黑面 CA1069【爆款有夜光】"--%>
                                 <%--title="银壳黑面 CA1069【爆款有夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-银壳黑面 CA1069【爆款有夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img12.360buyimg.com/n9/s40x40_jfs/t1/10815/37/13090/177444/5c7f84e3E48329ff7/5ff07984ab0a388f.jpg"--%>
                                         <%--alt="银壳黑面 CA1069【爆款有夜光】" width="40" height="40"><i>银壳黑面 CA1069【爆款有夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item" data-sku="1048468096" data-value="全黑皮带 CA1069【爆款有夜光】"--%>
                                 <%--title="全黑皮带 CA1069【爆款有夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-全黑皮带 CA1069【爆款有夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img11.360buyimg.com/n9/s40x40_jfs/t1/20065/35/9551/161198/5c7f8504E51003a17/bfb488bbd0324776.jpg"--%>
                                         <%--alt="全黑皮带 CA1069【爆款有夜光】" width="40" height="40"><i>全黑皮带 CA1069【爆款有夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item" data-sku="1455730379" data-value="白面皮带 CA1069【爆款有夜光】"--%>
                                 <%--title="白面皮带 CA1069【爆款有夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-白面皮带 CA1069【爆款有夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img14.360buyimg.com/n9/s40x40_jfs/t18790/96/189441145/389565/c88e22a8/5a61d145N5ae1f346.jpg"--%>
                                         <%--alt="白面皮带 CA1069【爆款有夜光】" width="40" height="40"><i>白面皮带 CA1069【爆款有夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item" data-sku="1455730378" data-value="金白钢带 CA1069【爆款有夜光】"--%>
                                 <%--title="金白钢带 CA1069【爆款有夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-金白钢带 CA1069【爆款有夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img13.360buyimg.com/n9/s40x40_jfs/t16228/188/2488939051/161224/1798fce9/5aacd140N30f43191.jpg"--%>
                                         <%--alt="金白钢带 CA1069【爆款有夜光】" width="40" height="40"><i>金白钢带 CA1069【爆款有夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item" data-sku="11342334696" data-value="橙针钢带 CA1094【爆款无夜光】"--%>
                                 <%--title="橙针钢带 CA1094【爆款无夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-橙针钢带 CA1094【爆款无夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img11.360buyimg.com/n9/s40x40_jfs/t1/31382/31/4619/128288/5c7f85aaEd5742426/404e99ac105d42f9.jpg"--%>
                                         <%--alt="橙针钢带 CA1094【爆款无夜光】" width="40" height="40"><i>橙针钢带 CA1094【爆款无夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item" data-sku="11342334699" data-value="白针钢带 CA1094【爆款有夜光】"--%>
                                 <%--title="白针钢带 CA1094【爆款有夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-白针钢带 CA1094【爆款有夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img14.360buyimg.com/n9/s40x40_jfs/t1/23665/9/9437/167293/5c7f851aEa688491f/0973ce9536560695.jpg"--%>
                                         <%--alt="白针钢带 CA1094【爆款有夜光】" width="40" height="40"><i>白针钢带 CA1094【爆款有夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item" data-sku="11342334697" data-value="蓝针钢带 CA1094【爆款无夜光】"--%>
                                 <%--title="蓝针钢带 CA1094【爆款无夜光】">--%>
                                <%--<b></b>--%>
                                <%--<a href="#none" clstag="shangpin|keycount|product|yanse-蓝针钢带 CA1094【爆款无夜光】">--%>
                                    <%--<img data-img="1"--%>
                                         <%--src="//img12.360buyimg.com/n9/s40x40_jfs/t1/31846/32/4848/185596/5c80b6cbEed5e0c92/fff475573b74c2f3.jpg"--%>
                                         <%--alt="蓝针钢带 CA1094【爆款无夜光】" width="40" height="40"><i>蓝针钢带 CA1094【爆款无夜光】</i>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div id="choose-results" class="li" style="display:none">--%>
                        <%--<div class="dt">已选择</div>--%>
                        <%--<div class="dd"></div>--%>
                    <%--</div>--%>
                <%--</div>--%>


                <%--<div id="choose-luodipei" class="choose-luodipei li" style="display:none">--%>
                    <%--<div class="dt">送装服务</div>--%>
                    <%--<div class="dd"></div>--%>
                <%--</div>--%>
                <%--<div id="choose-suits" class="li choose-suits" style="display:none">--%>
                    <%--<div class="dt">套　　装</div>--%>
                    <%--<div class="dd clearfix"></div>--%>
                <%--</div>--%>
                <%--<div id="choose-gift" class="choose-gift li" style="display: none;">--%>
                    <%--<div class="dt">搭配赠品</div>--%>
                    <%--<div class="dd clearfix">--%>
                        <%--<div class="gift J-gift" clstag="shangpin|keycount|product|dapeizengpin">--%>
                            <%--<i class="sprite-gift J-popup"></i><span class="gift-tips">选择搭配赠品(共<em>0</em>个)</span>--%>
                        <%--</div>--%>
                        <%--<!--choosed-->--%>
                        <%--<div class="J-gift-selected hide">--%>
                            <%--<div class="gift choosed J-gift-choosed"></div>--%>
                            <%--<a href="#none" class="gift-modify J-popup"--%>
                               <%--clstag="shangpin|keycount|product|zengpin-genggai">更改</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div id="choose-service" class="li" data-hook="hide" style="">--%>
                    <%--<div class="dt" data-yb="new_yb_server">增值保障</div>--%>
                    <%--<div class="dd">--%>
                        <%--<div class="service-type-yb clearfix">--%>
                            <%--<div class="yb-item-cat">--%>
                                <%--<div class="yb-item"><img class="icon"--%>
                                                          <%--src="//img12.360buyimg.com//fuwu/jfs/t5431/52/1153921527/1119/b6e6fbf5/590c0c85N460e4552.png">--%>
                                    <%--<span class="name">全保修2年</span> <span class="price">￥89</span> <i--%>
                                            <%--class="arrow-icon"></i>--%>
                                    <%--<div class="after"></div>--%>
                                <%--</div>--%>
                                <%--<div class="more-item">--%>
                                    <%--<ul>--%>
                                        <%--<li data-sku="19578112597">--%>
                                            <%--<div class="title" title="性能故障意外故障全面保修"><span class="choose-btn"--%>
                                                                                          <%--clstag="shangpin|keycount|product|jingdongfuwu_19578112597">                                            <i--%>
                                                    <%--class="sprite-checkbox"></i><span class="name">全保修2年</span><span--%>
                                                    <%--class="price">￥89</span>                                        </span>--%>
                                                <%--<a href="//item.jd.com/19578112597.html" target="_blank"--%>
                                                   <%--class="detail-more"--%>
                                                   <%--clstag="shangpin|keycount|product|jingdongfuwu_xiangqing">详情<s--%>
                                                        <%--class="s-arrow">&gt;&gt;</s></a></div>--%>
                                        <%--</li>--%>
                                        <%--<li data-sku="19578356009">--%>
                                            <%--<div class="title" title="全保修3年含性能/意外故障"><span class="choose-btn"--%>
                                                                                           <%--clstag="shangpin|keycount|product|jingdongfuwu_19578356009">                                            <i--%>
                                                    <%--class="sprite-checkbox"></i><span class="name">全保修3年</span><span--%>
                                                    <%--class="price">￥129</span>                                        </span>--%>
                                                <%--<a href="//item.jd.com/19578356009.html" target="_blank"--%>
                                                   <%--class="detail-more"--%>
                                                   <%--clstag="shangpin|keycount|product|jingdongfuwu_xiangqing">详情<s--%>
                                                        <%--class="s-arrow">&gt;&gt;</s></a></div>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="yb-item-cat">--%>
                                <%--<div class="yb-item"><img class="icon"--%>
                                                          <%--src="//img11.360buyimg.com//fuwu/jfs/t7258/334/384584716/1313/a055eace/5992a59bNd253524f.png">--%>
                                    <%--<span class="name">碎表镜2年</span> <span class="price">￥69</span> <i--%>
                                            <%--class="arrow-icon"></i>--%>
                                    <%--<div class="after"></div>--%>
                                <%--</div>--%>
                                <%--<div class="more-item">--%>
                                    <%--<ul>--%>
                                        <%--<li data-sku="19578334386">--%>
                                            <%--<div class="title" title="意外导致的表镜碎裂免费维修"><span class="choose-btn"--%>
                                                                                           <%--clstag="shangpin|keycount|product|jingdongfuwu_19578334386">                                            <i--%>
                                                    <%--class="sprite-checkbox"></i><span class="name">碎表镜2年</span><span--%>
                                                    <%--class="price">￥69</span>                                        </span>--%>
                                                <%--<a href="//item.jd.com/19578334386.html" target="_blank"--%>
                                                   <%--class="detail-more"--%>
                                                   <%--clstag="shangpin|keycount|product|jingdongfuwu_xiangqing">详情<s--%>
                                                        <%--class="s-arrow">&gt;&gt;</s></a></div>--%>
                                        <%--</li>--%>
                                        <%--<li data-sku="19581288803">--%>
                                            <%--<div class="title" title="意外导致的表镜碎裂免费维修"><span class="choose-btn"--%>
                                                                                           <%--clstag="shangpin|keycount|product|jingdongfuwu_19581288803">                                            <i--%>
                                                    <%--class="sprite-checkbox"></i><span class="tips">优惠</span><span--%>
                                                    <%--class="name">碎表镜3年</span><span class="price">￥99</span>                                        </span>--%>
                                                <%--<a href="//item.jd.com/19581288803.html" target="_blank"--%>
                                                   <%--class="detail-more"--%>
                                                   <%--clstag="shangpin|keycount|product|jingdongfuwu_xiangqing">详情<s--%>
                                                        <%--class="s-arrow">&gt;&gt;</s></a></div>--%>
                                        <%--</li>--%>
                                        <%--<li data-sku="19579087285">--%>
                                            <%--<div class="title" title="意外进液导致的功能故障免费维修"><span class="choose-btn"--%>
                                                                                             <%--clstag="shangpin|keycount|product|jingdongfuwu_19579087285">                                            <i--%>
                                                    <%--class="sprite-checkbox"></i><span class="name">进液保2年</span><span--%>
                                                    <%--class="price">￥69</span>                                        </span>--%>
                                                <%--<a href="//item.jd.com/19579087285.html" target="_blank"--%>
                                                   <%--class="detail-more"--%>
                                                   <%--clstag="shangpin|keycount|product|jingdongfuwu_xiangqing">详情<s--%>
                                                        <%--class="s-arrow">&gt;&gt;</s></a></div>--%>
                                        <%--</li>--%>
                                        <%--<li data-sku="19579419501">--%>
                                            <%--<div class="title" title="意外进液导致的功能故障免费维修"><span class="choose-btn"--%>
                                                                                             <%--clstag="shangpin|keycount|product|jingdongfuwu_19579419501">                                            <i--%>
                                                    <%--class="sprite-checkbox"></i><span class="name">进液保3年</span><span--%>
                                                    <%--class="price">￥99</span>                                        </span>--%>
                                                <%--<a href="//item.jd.com/19579419501.html" target="_blank"--%>
                                                   <%--class="detail-more"--%>
                                                   <%--clstag="shangpin|keycount|product|jingdongfuwu_xiangqing">详情<s--%>
                                                        <%--class="s-arrow">&gt;&gt;</s></a></div>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="yb-item-cat">--%>
                                <%--<div class="yb-item"><img class="icon"--%>
                                                          <%--src="//img11.360buyimg.com//fuwu/jfs/t2083/278/1782000835/1227/e5dadbca/567cb046Ncc8f504a.png">--%>
                                    <%--<span class="name">换新保2年</span> <span class="price">￥99</span> <i--%>
                                            <%--class="arrow-icon"></i>--%>
                                    <%--<div class="after"></div>--%>
                                <%--</div>--%>
                                <%--<div class="more-item">--%>
                                    <%--<ul>--%>
                                        <%--<li data-sku="19579177641">--%>
                                            <%--<div class="title" title="性能故障免费换新或折旧换新机型"><span class="choose-btn"--%>
                                                                                             <%--clstag="shangpin|keycount|product|jingdongfuwu_19579177641">                                            <i--%>
                                                    <%--class="sprite-checkbox"></i><span class="name">换新保2年</span><span--%>
                                                    <%--class="price">￥99</span>                                        </span>--%>
                                                <%--<a href="//item.jd.com/19579177641.html" target="_blank"--%>
                                                   <%--class="detail-more"--%>
                                                   <%--clstag="shangpin|keycount|product|jingdongfuwu_xiangqing">详情<s--%>
                                                        <%--class="s-arrow">&gt;&gt;</s></a></div>--%>
                                        <%--</li>--%>
                                        <%--<li data-sku="19579658408">--%>
                                            <%--<div class="title" title="性能故障免费换新或折旧换新机型"><span class="choose-btn"--%>
                                                                                             <%--clstag="shangpin|keycount|product|jingdongfuwu_19579658408">                                            <i--%>
                                                    <%--class="sprite-checkbox"></i><span class="name">换新保3年</span><span--%>
                                                    <%--class="price">￥139</span>                                        </span>--%>
                                                <%--<a href="//item.jd.com/19579658408.html" target="_blank"--%>
                                                   <%--class="detail-more"--%>
                                                   <%--clstag="shangpin|keycount|product|jingdongfuwu_xiangqing">详情<s--%>
                                                        <%--class="s-arrow">&gt;&gt;</s></a></div>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="service-tips"><a href="#none"><i class="sprite-question"></i></a>--%>
                                <%--<div class="tips">--%>
                                    <%--<div class="sprite-arrow"></div>--%>
                                    <%--<div class="content">--%>
                                        <%--<dl>--%>
                                            <%--<dd>--%>
                                                <%--增值保障是指凡在京东购买商品或服务的消费者，在保障期间内遇到无论是正常使用中的问题还是意外事故，即可享受增值保障服务。保障内容包括：延长保修、只换不修、意外保护、服务保障。覆盖家电、手机数码、电脑办公、汽车用品、服饰家居等商品。--%>
                                            <%--</dd>--%>
                                        <%--</dl>--%>
                                        <%--<p>增值保障服务，只能提供增值税普通电子发票，如有疑问，请与<a href="//chat.jd.com/pop/chat?shopId=162403"--%>
                                                                          <%--target="_blank">在线客服</a>联系</p></div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div id="choose-baitiao" class="li choose-baitiao" style="">--%>
                    <%--<div class="dt">白条分期</div>--%>
                    <%--<div class="dd">--%>
                        <%--<div class="baitiao-list J-baitiao-list">--%>
                            <%--<div class="item" clstag="shangpin|keycount|product|baitiaofenqi_1_5025_5026_13674"--%>
                                 <%--data-snum="1"><b></b> <a href="#none"> <strong> 不分期 </strong> <span--%>
                                    <%--style="display:none;"><em>惠</em> 0服务费                    </span> </a>--%>
                                <%--<div class="baitiao-tips hide">--%>
                                    <%--<ul>--%>
                                        <%--<li> 无服务费</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="item" clstag="shangpin|keycount|product|baitiaofenqi_3_5025_5026_13674"--%>
                                 <%--data-snum="3"><b></b> <a href="#none"> <strong> ￥399.34起×3期 </strong> <span--%>
                                    <%--style="display:none;"><em>惠</em> 0服务费                    </span> </a>--%>
                                <%--<div class="baitiao-tips hide">--%>
                                    <%--<ul>--%>
                                        <%--<li> 无服务费</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="item" clstag="shangpin|keycount|product|baitiaofenqi_6_5025_5026_13674"--%>
                                 <%--data-snum="6"><b></b> <a href="#none"> <strong> ￥199.65起×6期 </strong> <span--%>
                                    <%--style="display:none;"><em>惠</em> 0服务费                    </span> </a>--%>
                                <%--<div class="baitiao-tips hide">--%>
                                    <%--<ul>--%>
                                        <%--<li> 无服务费</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="item" clstag="shangpin|keycount|product|baitiaofenqi_12_5025_5026_13674"--%>
                                 <%--data-snum="12"><b></b> <a href="#none"> <strong> ￥105.86起×12期 </strong> <span--%>
                                    <%--style="display:none;"><em>惠</em> 含服务费                    </span> </a>--%>
                                <%--<div class="baitiao-tips hide">--%>
                                    <%--<ul>--%>
                                        <%--<li> 含服务费：费率0.5%起，￥5.99起×12期</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="item" clstag="shangpin|keycount|product|baitiaofenqi_24_5025_5026_13674"--%>
                                 <%--data-snum="24"><b></b> <a href="#none"> <strong> ￥55.83起×24期 </strong> <span--%>
                                    <%--style="display:none;"><em>惠</em> 含服务费                    </span> </a>--%>
                                <%--<div class="baitiao-tips hide">--%>
                                    <%--<ul>--%>
                                        <%--<li> 含服务费：费率0.5%起，￥5.99起×24期</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="bt-info-tips"><a class="J-icon-hui prom icon fl" href="#none">　</a></div>--%>
                            <%--<div class="bt-info-tips"><a class="J-bt-tips question icon fl" href="#none">　</a></div>--%>
                        <%--</div>--%>
                        <%--<div class="baitiao-text-wrap">--%>
                            <%--<div class="baitiao-text J-baitiao-text"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div id="choose-jincai" class="li choose-jincai" style="display:none">--%>
                    <%--<div class="dt">企业金采</div>--%>
                    <%--<div class="dd">--%>
                        <%--<div class="jincai-list J-jincai-list">--%>
                            <%--<div class="item">--%>
                                <%--<a href="#none">先采购，后付款</a>--%>
                            <%--</div>--%>
                            <%--<div class="bt-info-tips">--%>
                                <%--<a class="J-bt-tips question icon fl" href="#none">　</a>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="summary-line"></div>
                <div id="choose-btns" class="choose-btns clearfix">
                    <div class="choose-amount " clstag="shangpin|keycount|product|goumaishuliang_2">
                        <div class="wrap-input">
                            <input class="text buy-num" onkeyup="setAmount.modify('#buy-num');" id="buy-num" value="1"
                                   data-max="200">
                            <a class="btn-reduce" href="#none"
                               data-disabled="1" onclick="subtract()">-</a>
                            <a onclick="add()" class="btn-add" onclick="setAmount.add('#buy-num')" href="#none" data-disabled="1">+</a>
                        </div>
                        <script>
                            function subtract() {
                                var number = $("#buy-num").val();
                                var num = 1;
                                if(number > 1){
                                    num = number - 1;
                                }
                                $("#buy-num").val(num);
                            }
                            function add() {
                                var number = $("#buy-num").val();
                                var num = parseInt(number) + parseInt(1);
                                $("#buy-num").val(num);
                            }
                        </script>
                    </div>
                    <!--<a id="choose-btn-gift" class="btn-special1 btn-lg" style="display:none;" href="//cart.gift.jd.com/cart/addGiftToCart.action?pid=1048468099&pcount=1&ptype=1" class="btn-gift" clstag="shangpin|keycount|product|选作礼物购买_2"><b></b>选作礼物购买</a>-->
                    <a href="#"
                       class="btn-special1 btn-lg"
                       onclick="addBuyCar()" >加入购物车</a>
                    <a id="btn-baitiao" class="btn-special2 btn-lg" style="display:none;"
                       onclick="log(&quot;product&quot;, &quot;dabaitiaobutton_5025_5026_13674&quot;, &quot;1048468099&quot;)">打白条</a>
                    <a href="//jc.jd.com" target="_blank" id="btn-jincai" class="btn-special2 btn-lg"
                       style="display: none;" clstag="shangpin|keycount|product|jincai_2">使用金采</a>
                    <!-- <a href="#none" id="btn-onkeybuy" class="btn-special2 btn-lg" style="display:none;" onclick='log("product", "easybuy_2", "1048468099")'>一键购</a> -->
                </div>
                <div id="local-tips" class="summary-tips hide" style="display: none;">
                    <div class="dt">本地活动</div>
                    <div class="dd">
                        <ol class="tips-list clearfix"></ol>
                    </div>
                </div>
                <div id="summary-tips" class="summary-tips" clstag="shangpin|keycount|product|wenxintishi_2" style="">
                    <div class="dt">温馨提示</div>
                    <div class="dd">
                        <ol class="tips-list clearfix">
                            <li class="local-txt">·支持7天无理由退货</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div id="track" class="track">
            <div class="extra-trigger">
                <%--<a href="#none"><i class="sprite-extra"></i>更多商品信息</a>--%>
            </div>
            <div class="extra">
                <div class="track-tit">
                    <h3>看了又看</h3>
                    <span></span>
                </div>
                <div class="track-con" data-rid="902029"
                     style="position: relative; width: 150px; height: 564px; overflow: hidden;">
                    <ul clstag="shangpin|keycount|product|kanleyoukan_2"
                        style="position: absolute; width: 150px; height: 2820px; top: 0px; left: 0px;">
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=35820751088$index=0$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=3dc7df667f33f09db6b703133a267ce75f4fba47"
                            data-push="1" style="float: left;"><a target="_blank"
                                                                  title="卡罗莱（CALUOLA）全自动机械表 男士手表 运动 男表防水多功能时尚学生真皮带精钢带男款夜光腕表 白针钢带 CA1094【爆款】"
                                                                  href="//item.jd.com/35820751088.html"> <img
                                alt="卡罗莱（CALUOLA）全自动机械表 男士手表 运动 男表防水多功能时尚学生真皮带精钢带男款夜光腕表 白针钢带 CA1094【爆款】"
                                src="//img13.360buyimg.com/n1/s150x150_jfs/t1/23665/9/9437/167293/5c7f851aEa688491f/0973ce9536560695.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）全自动机械表 男士手表 运动 男表防水多功能时尚学生真皮带精钢带男款夜光腕表 白针钢带 CA1094【爆款】</div>
                            <p class="J-p-35820751088">￥1198.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1624158816$index=1$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=a97262aaecbc9a82796ce76aa2a85dbdd638639f"
                            data-push="2" style="float: left;"><a target="_blank"
                                                                  title="卡罗莱（CALUOLA）全自动机械表精钢带男士手表时尚防水男表商务休闲腕表正品CA1157 金色白色"
                                                                  href="//item.jd.com/1624158816.html"> <img
                                alt="卡罗莱（CALUOLA）全自动机械表精钢带男士手表时尚防水男表商务休闲腕表正品CA1157 金色白色"
                                src="//img11.360buyimg.com/n1/s150x150_jfs/t1666/315/365159237/251907/f4908980/5598e656N907adc72.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）全自动机械表精钢带男士手表时尚防水男表商务休闲腕表正品CA1157 金色白色</div>
                            <p class="J-p-1624158816">￥1199.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1356499965$index=2$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=14cc917f944b41427d8f800eefbaf3790a08fd91"
                            data-push="3" style="float: left;"><a target="_blank"
                                                                  title="卡罗莱（CALUOLA）男士手表全自动机械表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 银色黑色皮带 CA1112"
                                                                  href="//item.jd.com/1356499965.html"> <img
                                alt="卡罗莱（CALUOLA）男士手表全自动机械表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 银色黑色皮带 CA1112"
                                src="//img10.360buyimg.com/n1/s150x150_jfs/t15475/138/71597737/411256/10a5ba59/5a265c48N6685c559.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）男士手表全自动机械表运动男表防水多功能时尚学生真皮带精钢带夜光腕表 银色黑色皮带 CA1112</div>
                            <p class="J-p-1356499965">￥1198.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1594584838$index=3$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=74c205ed7aaf79165c44543e5a75c4566fc425f"
                            data-push="4" style="float: left;"><a target="_blank"
                                                                  title="卡罗莱（CALUOLA）全自动机械表男士手表运动商务简约腕表防水时尚个性精钢带男表1069 全黑皮带 CA1069MM【爆款】"
                                                                  href="//item.jd.com/1594584838.html"> <img
                                alt="卡罗莱（CALUOLA）全自动机械表男士手表运动商务简约腕表防水时尚个性精钢带男表1069 全黑皮带 CA1069MM【爆款】"
                                src="//img13.360buyimg.com/n1/s150x150_jfs/t1/22943/19/12690/163273/5c99cd01E6003d80e/b0871b73b18a932d.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）全自动机械表男士手表运动商务简约腕表防水时尚个性精钢带男表1069 全黑皮带 CA1069MM【爆款】</div>
                            <p class="J-p-1594584838">￥1298.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1459118395$index=4$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=1954ef4cbaddea08a749b3bfef550c5749aa35d3"
                            data-push="5" style="float: left;"><a target="_blank"
                                                                  title="卡罗莱（CALUOLA) 双镂空全自动机械表时尚腕表防水运动皮带男士手表CA1061 咖啡"
                                                                  href="//item.jd.com/1459118395.html"> <img
                                alt="卡罗莱（CALUOLA) 双镂空全自动机械表时尚腕表防水运动皮带男士手表CA1061 咖啡"
                                src="//img10.360buyimg.com/n1/s150x150_jfs/t1/40609/28/11478/173734/5d4be99cE67979d85/d3a712c02ef67187.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA) 双镂空全自动机械表时尚腕表防水运动皮带男士手表CA1061 咖啡</div>
                            <p class="J-p-1459118395">￥1498.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=10663667645$index=5$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=efc2adadec06aed043a4aa8ad739ec65623923e6"
                            data-push="6" style="float: left;"><a target="_blank"
                                                                  title="卡罗莱（CALUOLA）男士手表全自动机械表运动男表防水多功能时尚学生单历精钢带夜光腕表CA1168 蓝针"
                                                                  href="//item.jd.com/10663667645.html"> <img
                                alt="卡罗莱（CALUOLA）男士手表全自动机械表运动男表防水多功能时尚学生单历精钢带夜光腕表CA1168 蓝针"
                                src="//img10.360buyimg.com/n1/s150x150_jfs/t1/61732/19/4599/188281/5d2ad379E4329ddbe/e43f6c8dcde92477.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）男士手表全自动机械表运动男表防水多功能时尚学生单历精钢带夜光腕表CA1168 蓝针</div>
                            <p class="J-p-10663667645">￥1198.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1643945301$index=6$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=697945a463dd44bc7c7f153304fbcde36eb4ecd2"
                            data-push="7" style="float: left;"><a target="_blank"
                                                                  title="卡罗莱（CALUOLA）全自动机械表运动男士手表商务腕表防水时尚潮流男表CA1156 皮带白面"
                                                                  href="//item.jd.com/1643945301.html"> <img
                                alt="卡罗莱（CALUOLA）全自动机械表运动男士手表商务腕表防水时尚潮流男表CA1156 皮带白面"
                                src="//img11.360buyimg.com/n1/s150x150_jfs/t1471/70/824836620/146231/6c86c1dd/55acff41N2b32cfc9.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）全自动机械表运动男士手表商务腕表防水时尚潮流男表CA1156 皮带白面</div>
                            <p class="J-p-1643945301">￥1098.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1048792427$index=7$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=767d98de450d22b1cdb2e351f61ab67fb872e836"
                            data-push="8" style="float: left;"><a target="_blank"
                                                                  title="卡罗莱（CALUOLA）全自动机械表男士手表商务时尚男表夜光休闲学生防水腕表1070 银色白色钢带"
                                                                  href="//item.jd.com/1048792427.html"> <img
                                alt="卡罗莱（CALUOLA）全自动机械表男士手表商务时尚男表夜光休闲学生防水腕表1070 银色白色钢带"
                                src="//img12.360buyimg.com/n1/s150x150_jfs/t1/25692/2/14427/95416/5ca8592aE8a19bf02/1598c6470dec78a4.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）全自动机械表男士手表商务时尚男表夜光休闲学生防水腕表1070 银色白色钢带</div>
                            <p class="J-p-1048792427">￥1199.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1607027894$index=8$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=efcf087ca3afc70df33ed50234e0025a2db25406"
                            data-push="9" style="float: left;"><a target="_blank"
                                                                  title="卡罗莱（CALUOLA）全自动机械表运动男士手表商务腕表防水时尚潮流男表CA1144 全黑蓝针皮带"
                                                                  href="//item.jd.com/1607027894.html"> <img
                                alt="卡罗莱（CALUOLA）全自动机械表运动男士手表商务腕表防水时尚潮流男表CA1144 全黑蓝针皮带"
                                src="//img14.360buyimg.com/n1/s150x150_jfs/t910/237/1219910499/287384/74b3c099/55857634Nf3dd55b3.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）全自动机械表运动男士手表商务腕表防水时尚潮流男表CA1144 全黑蓝针皮带</div>
                            <p class="J-p-1607027894">￥1298.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1734901559$index=9$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=2cb5b785be25765fb8a9bc0ef5312de253c26f98"
                            data-push="10" style="float: left;"><a target="_blank"
                                                                   title="卡罗莱（CALUOLA）手表 男士手表 全自动机械表真皮带防水商务六针运动多功能男表潮流腕表1121 玫金黑面 CA1121【爆款】"
                                                                   href="//item.jd.com/1734901559.html"> <img
                                alt="卡罗莱（CALUOLA）手表 男士手表 全自动机械表真皮带防水商务六针运动多功能男表潮流腕表1121 玫金黑面 CA1121【爆款】"
                                src="//img14.360buyimg.com/n1/s150x150_jfs/t1/32465/2/10456/187811/5cb59112E1728f5ed/cc9abd8a5ab2194d.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）手表 男士手表 全自动机械表真皮带防水商务六针运动多功能男表潮流腕表1121 玫金黑面 CA1121【爆款】</div>
                            <p class="J-p-1734901559">￥1198.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1049035231$index=10$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=56947d74f9ed29b3b443f49ec50880b7b8e0033"
                            data-push="11" style="float: left;"><a target="_blank"
                                                                   title="卡罗莱（CALUOLA）全自动机械表真皮带男士手表真皮带简约商务男表防水休闲腕表1102 银壳白面"
                                                                   href="//item.jd.com/1049035231.html"> <img
                                alt="卡罗莱（CALUOLA）全自动机械表真皮带男士手表真皮带简约商务男表防水休闲腕表1102 银壳白面"
                                src="//img11.360buyimg.com/n1/s150x150_jfs/t1/87069/25/5075/137812/5deb57b8E06ea6bbd/83225e37843b2842.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）全自动机械表真皮带男士手表真皮带简约商务男表防水休闲腕表1102 银壳白面</div>
                            <p class="J-p-1049035231">￥1098.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=10979047701$index=11$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=47b781b09f30233294bb2d3f64d6fb7d7c8ae3ee"
                            data-push="12" style="float: left;"><a target="_blank"
                                                                   title="卡罗莱（CALUOLA）情侣手表一对表男士精钢带简约时尚女士女表日历防水石英男表1217 黑面男款"
                                                                   href="//item.jd.com/10979047701.html"> <img
                                alt="卡罗莱（CALUOLA）情侣手表一对表男士精钢带简约时尚女士女表日历防水石英男表1217 黑面男款"
                                src="//img11.360buyimg.com/n1/s150x150_jfs/t1/22682/18/14723/128485/5ca9adc6Ed8acd6ac/f93ea9ea2ca63648.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）情侣手表一对表男士精钢带简约时尚女士女表日历防水石英男表1217 黑面男款</div>
                            <p class="J-p-10979047701">￥768.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1311421641$index=12$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=b6bfc6dc463a3bde7f3c183b5ad1b4e79c08b3"
                            data-push="13" style="float: left;"><a target="_blank"
                                                                   title="卡罗莱（CALUOLA）多功能全自动机械表运动男士手表六针腕表男表防水时尚CA1071 1071黑色绿针"
                                                                   href="//item.jd.com/1311421641.html"> <img
                                alt="卡罗莱（CALUOLA）多功能全自动机械表运动男士手表六针腕表男表防水时尚CA1071 1071黑色绿针"
                                src="//img11.360buyimg.com/n1/s150x150_jfs/t1/16827/17/8124/177708/5c73998eE3c96388c/3dc10daf739867ae.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）多功能全自动机械表运动男士手表六针腕表男表防水时尚CA1071 1071黑色绿针</div>
                            <p class="J-p-1311421641">￥1198.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1630900988$index=13$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=b994368c5b1c77af108df37bfae4fddb6a47a0a9"
                            data-push="14" style="float: left;"><a target="_blank"
                                                                   title="卡罗莱（CALUOLA）全自动机械表商务男士手表日历休闲钢带男表腕表防水CA1159 银色白色"
                                                                   href="//item.jd.com/1630900988.html"> <img
                                alt="卡罗莱（CALUOLA）全自动机械表商务男士手表日历休闲钢带男表腕表防水CA1159 银色白色"
                                src="//img13.360buyimg.com/n1/s150x150_jfs/t1459/145/635092805/221614/442df696/559f875dNc0f7f054.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）全自动机械表商务男士手表日历休闲钢带男表腕表防水CA1159 银色白色</div>
                            <p class="J-p-1630900988">￥1199.00</p></a></li>
                        <li data-clk="//knicks.jd.com/log/server?t=rec_common_clk&amp;v=type=rec.902029$src=rec$action=1$reqsig=9d13d06ab120aa90a5e09b1ec270a6ab396853fd$enb=1$sku=1048468099$p=902029$pin=$uuid=641323712$csku=1043529275$index=14$st=0$adcli=$expid=0$mexpid=$im=$rid=878194514246800063$ver=1$sig=434ef29402b670b25a34e44789b587d72b4f284d"
                            data-push="15" style="float: left;"><a target="_blank"
                                                                   title="卡罗莱（CALUOLA）六针全自动机械表男士手表休闲商务精钢带男表防水腕表CA1013 银色黑色"
                                                                   href="//item.jd.com/1043529275.html"> <img
                                alt="卡罗莱（CALUOLA）六针全自动机械表男士手表休闲商务精钢带男表防水腕表CA1013 银色黑色"
                                src="//img10.360buyimg.com/n1/s150x150_g13/M07/10/18/rBEhUlJdC6cIAAAAAAL-yAFQbr4AAEKtgNXMR8AAv7g590.jpg"
                                width="150" height="150">
                            <div>卡罗莱（CALUOLA）六针全自动机械表男士手表休闲商务精钢带男表防水腕表CA1013 银色黑色</div>
                            <p class="J-p-1043529275">￥1098.00</p></a></li>
                    </ul>
                </div>
                <div class="track-more">
                    <a href="#none" class="J-prev sprite-up">上翻</a>
                    <a href="#none" class="J-next sprite-down">下翻</a>
                </div>
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
    <div class="mod_help" clstag="h|keycount|btm|btmnavi_null02">
        <div class="grid_c1 mod_help_inner">
            <div class="mod_help_list">
                <div class="mod_help_nav"><h5 class="mod_help_nav_tit">购物指南</h5>
                    <ul class="mod_help_nav_con">
                        <li><a href="//help.jd.com/user/issue/list-29.html" target="_blank" rel="noopener noreferrer">购物流程</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/list-151.html" target="_blank" rel="noopener noreferrer">会员介绍</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/list-297.html" target="_blank" rel="noopener noreferrer">生活旅行</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue.html" target="_blank" rel="noopener noreferrer">常见问题</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/list-136.html" target="_blank" rel="noopener noreferrer">大家电</a>
                        </li>
                        <li><a href="//help.jd.com/user/custom.html" target="_blank" rel="noopener noreferrer">联系客服</a>
                        </li>
                    </ul>
                </div>
                <div class="mod_help_nav"><h5 class="mod_help_nav_tit">配送方式</h5>
                    <ul class="mod_help_nav_con">
                        <li><a href="//help.jd.com/user/issue/list-81-100.html" target="_blank"
                               rel="noopener noreferrer">上门自提</a></li>
                        <li><a href="//help.jd.com/user/issue/list-81.html" target="_blank" rel="noopener noreferrer">211限时达</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/103-983.html" target="_blank" rel="noopener noreferrer">配送服务查询</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/109-188.html" target="_blank" rel="noopener noreferrer">配送费收取标准</a>
                        </li>
                        <li><a href="//help.joybuy.com/help/question-list-201.html" target="_blank"
                               rel="noopener noreferrer">海外配送</a></li>
                    </ul>
                </div>
                <div class="mod_help_nav"><h5 class="mod_help_nav_tit">支付方式</h5>
                    <ul class="mod_help_nav_con">
                        <li><a href="//help.jd.com/user/issue/list-172.html" target="_blank" rel="noopener noreferrer">货到付款</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/list-173.html" target="_blank" rel="noopener noreferrer">在线支付</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/list-176.html" target="_blank" rel="noopener noreferrer">分期付款</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/list-175.html" target="_blank" rel="noopener noreferrer">公司转账</a>
                        </li>
                    </ul>
                </div>
                <div class="mod_help_nav"><h5 class="mod_help_nav_tit">售后服务</h5>
                    <ul class="mod_help_nav_con">
                        <li><a href="//help.jd.com/user/issue/321-981.html" target="_blank" rel="noopener noreferrer">售后政策</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/list-132.html" target="_blank" rel="noopener noreferrer">价格保护</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/130-978.html" target="_blank" rel="noopener noreferrer">退款说明</a>
                        </li>
                        <li><a href="//myjd.jd.com/repair/repairs.action" target="_blank" rel="noopener noreferrer">返修/退换货</a>
                        </li>
                        <li><a href="//help.jd.com/user/issue/list-50.html" target="_blank" rel="noopener noreferrer">取消订单</a>
                        </li>
                    </ul>
                </div>
                <div class="mod_help_nav"><h5 class="mod_help_nav_tit">特色服务</h5>
                    <ul class="mod_help_nav_con">
                        <li><a href="//1paipai.jd.com/" target="_blank" rel="noopener noreferrer">夺宝岛</a></li>
                        <li><a href="//help.jd.com/user/issue/list-134.html" target="_blank" rel="noopener noreferrer">DIY装机</a>
                        </li>
                        <li><a href="//fuwu.jd.com/" target="_blank" rel="noopener noreferrer">延保服务</a></li>
                        <li><a href="//o.jd.com/market/index.action" target="_blank" rel="noopener noreferrer">京东E卡</a>
                        </li>
                        <li><a href="//mobile.jd.com/" target="_blank" rel="noopener noreferrer">京东通信</a></li>
                        <li><a href="//smart.jd.com/" target="_blank" rel="noopener noreferrer">京鱼座智能</a></li>
                    </ul>
                </div>
                <div class="mod_help_cover"><h5 class="mod_help_cover_tit">京东自营覆盖区县</h5>
                    <div class="mod_help_cover_con"><p class="mod_help_cover_info">
                        京东已向全国2661个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
                        <p class="mod_help_cover_more"><a href="//help.jd.com/user/issue/103-983.html" target="_blank"
                                                          rel="noopener noreferrer">查看详情<i class="iconfont"></i></a>
                        </p></div>
                </div>
            </div>
        </div>
    </div>
    <div class="mod_copyright">
        <div class="grid_c1 mod_copyright_inner"><p class="mod_copyright_links" clstag="h|keycount|btm|btmnavi_null03">
            <a href="//about.jd.com" target="_blank" rel="noopener noreferrer">关于我们</a><span
                class="mod_copyright_split">|</span><a href="//about.jd.com/contact" target="_blank"
                                                       rel="noopener noreferrer">联系我们</a><span
                class="mod_copyright_split">|</span><a href="//help.jd.com/user/custom.html" target="_blank"
                                                       rel="noopener noreferrer">联系客服</a><span
                class="mod_copyright_split">|</span><a href="//lai.jd.com" target="_blank" rel="noopener noreferrer">合作招商</a><span
                class="mod_copyright_split">|</span><a href="//helpcenter.jd.com/venderportal/index.html"
                                                       target="_blank" rel="noopener noreferrer">商家帮助</a><span
                class="mod_copyright_split">|</span><a href="//jzt.jd.com" target="_blank" rel="noopener noreferrer">营销中心</a><span
                class="mod_copyright_split">|</span><a href="//app.jd.com/" target="_blank" rel="noopener noreferrer">手机京东</a><span
                class="mod_copyright_split">|</span><a href="//club.jd.com/links.aspx" target="_blank"
                                                       rel="noopener noreferrer">友情链接</a><span
                class="mod_copyright_split">|</span><a href="//media.jd.com/" target="_blank" rel="noopener noreferrer">销售联盟</a><span
                class="mod_copyright_split">|</span><a
                href="//pro.jd.com/mall/active/3WA2zN8wkwc9fL9TxAJXHh5Nj79u/index.html" target="_blank"
                rel="noopener noreferrer">京东社区</a><span class="mod_copyright_split">|</span><a
                href="//pro.jd.com/mall/active/3TF25tMdrnURET8Ez1cW9hzfg3Jt/index.html" target="_blank"
                rel="noopener noreferrer">风险监测</a><span class="mod_copyright_split">|</span><a
                href="//about.jd.com/privacy/" target="_blank" rel="noopener noreferrer">隐私政策</a><span
                class="mod_copyright_split">|</span><a href="//gongyi.jd.com" target="_blank" rel="noopener noreferrer">京东公益</a><span
                class="mod_copyright_split">|</span><a href="//www.joybuy.com/" target="_blank"
                                                       rel="noopener noreferrer">English Site</a><span
                class="mod_copyright_split">|</span><a href="//corporate.jd.com" target="_blank"
                                                       rel="noopener noreferrer">Media &amp; IR</a></p>
            <div class="mod_copyright_info">
                <div class="mod_copyright_cert" clstag="h|keycount|btm|btmnavi_null04"><p><a
                        href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000088"
                        target="_blank" rel="noopener noreferrer">京公网安备 11000002000088号</a><span
                        class="mod_copyright_split">|</span><span>京ICP证070359号</span><span
                        class="mod_copyright_split">|</span><a
                        href="//img30.360buyimg.com/poprx/jfs/t1/45702/1/7206/3652062/5d4d3f4fE7ea82da4/207332da28ae8230.png"
                        target="_blank" rel="noopener noreferrer">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a><span
                        class="mod_copyright_split">|</span><span>新出发京零&nbsp;字第大120007号</span></p>
                    <p><span>互联网出版许可证编号新出网证(京)字150号</span><span class="mod_copyright_split">|</span><a
                            href="//pro.jd.com/mall/active/3bVDLXHdwVmdQksGF8TtS7ocq1NY/index.html" target="_blank"
                            rel="noopener noreferrer">出版物经营许可证</a><span class="mod_copyright_split">|</span><a
                            href="//misc.360buyimg.com/wz/wlwhjyxkz.jpg" target="_blank" rel="noopener noreferrer">网络文化经营许可证京网文[2014]2148-348号</a><span
                            class="mod_copyright_split">|</span><span>违法和不良信息举报电话：4006561155</span></p>
                    <p><span>Copyright&nbsp;©&nbsp;2004&nbsp;-&nbsp;2020&nbsp;&nbsp;京东JD.com&nbsp;版权所有</span><span
                            class="mod_copyright_split">|</span><span>消费者维权热线：4006067733</span><a
                            href="//pro.jd.com/mall/active/38PitHBfR7ZopNHRSHnuuWR5AMDL/index.html" target="_blank"
                            rel="noopener noreferrer" class="mod_copyright_license">经营证照</a><span
                            class="mod_copyright_split">|</span><span>(京)网械平台备字(2018)第00003号</span><span
                            class="mod_copyright_split">|</span><a
                            href="//storage.jd.com/imgtools/cbdaa22553-dccaf290-d1af-11e8-a840-89f99f5f0056.jpeg"
                            target="_blank" rel="noopener noreferrer" class="mod_business_license">营业执照</a></p></div>
                <div class="mod_copyright_inter"><p><a class="mod_copyright_inter_lk"
                                                       href="//www.joybuy.com/?source=1&amp;visitor_from=3"
                                                       target="_blank" rel="noopener noreferrer"
                                                       clstag="h|keycount|btm|btmnavi_null0501"><i
                        class="mod_copyright_inter_ico mod_copyright_inter_ico_global"></i>Global Site</a><span
                        class="mod_copyright_split">|</span><a class="mod_copyright_inter_lk"
                                                               href="//www.jd.ru/?source=1&amp;visitor_from=3"
                                                               target="_blank" rel="noopener noreferrer"
                                                               clstag="h|keycount|btm|btmnavi_null0502"><i
                        class="mod_copyright_inter_ico mod_copyright_inter_ico_rissia"></i>Сайт России</a><span
                        class="mod_copyright_split">|</span><a class="mod_copyright_inter_lk"
                                                               href="//www.jd.id/?source=1&amp;visitor_from=3"
                                                               target="_blank" rel="noopener noreferrer"
                                                               clstag="h|keycount|btm|btmnavi_null0503"><i
                        class="mod_copyright_inter_ico mod_copyright_inter_ico_indonesia"></i>Situs Indonesia</a><span
                        class="mod_copyright_split">|</span><a class="mod_copyright_inter_lk"
                                                               href="//www.joybuy.es/?source=1&amp;visitor_from=3"
                                                               target="_blank" rel="noopener noreferrer"
                                                               clstag="h|keycount|btm|btmnavi_null0504"><i
                        class="mod_copyright_inter_ico mod_copyright_inter_ico_spain"></i>Sitio de España</a><span
                        class="mod_copyright_split">|</span><a class="mod_copyright_inter_lk"
                                                               href="//www.jd.co.th/?source=1&amp;visitor_from=3"
                                                               target="_blank" rel="noopener noreferrer"
                                                               clstag="h|keycount|btm|btmnavi_null0505"><i
                        class="mod_copyright_inter_ico mod_copyright_inter_ico_thailand"></i>เว็บไซต์ประเทศไทย</a></p>
                </div>
                <div class="mod_copyright_subsites" clstag="h|keycount|btm|btmnavi_null06"><p><span>京东旗下网站：</span><a
                        href="https://www.jdpay.com/" target="_blank" rel="noopener noreferrer">京东钱包</a><span
                        class="mod_copyright_split">|</span><a href="http://www.jdcloud.com" target="_blank"
                                                               rel="noopener noreferrer">京东智联云</a></p></div>
            </div>
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
<script>
    function addBuyCar() {
        var goodsId = $("#goodsId").val();
        var userId = $("#userId").val();
        var num = $("#buy-num").val();
        if(userId == 0){
            window.location.href = "/pages/before/login.jsp"
        }else{
            window.location.href = "/before/addBuyCar?goodsId="+goodsId+"&userId="+userId+"&num="+num;
        }
    }
</script>
<script type="text/javascript" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/runtime.js"></script>
<script type="text/javascript" src="//misc.360buyimg.com/mtd/pc/index_2019/1.0.0/static/js/index.chunk.js"></script>
</body>
</html>

