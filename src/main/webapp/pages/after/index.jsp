<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- 引入样式 -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <!-- 引入组件库 -->
    <script src="https://unpkg.com/vue"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/vue@2.6.8/dist/vue.js"></script> -->
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>

<body>
<div id="app">
    <template>
        <el-container>
            <el-header height="100px">
                <el-row :gutter="20">
                    <el-col :span="8"><div class="grid-content bg-purple"></div></el-col>
                    <el-col :span="16"><div class="grid-content bg-purple"></div></el-col>
                </el-row>
            </el-header>

            <el-container style="height: 700px">
                <el-aside width="300px">
                    <el-menu :default-openeds="['1']" default-active="1-4-1" class="el-menu-vertical-demo" :collapse="isCollapse"  v-for="(articles,index) in allArticles" :key="index">
                        <el-submenu index="1">
                            <template slot="title">
                                <span slot="title" style="">{{articles.name}}</span>
                            </template>
                            <a target="right" href="/vehicleType/jumpVehicleType" style="text-decoration: blink">
                                <el-menu-item-group>
                                    <el-menu-item index="articles.id-article.id" v-for="(article,index) in articles.menuInfoList" :key="index">{{article.name}}</el-menu-item>
                                </el-menu-item-group>
                            </a>
                        </el-submenu>
                    </el-menu>
                </el-aside>

                <el-main>
                    <iframe name="right" style="width:100%;height:100% ;background-color: #e9eef3"></iframe>
                </el-main>

            </el-container>
        </el-container>

    </template>
</div>
</body>
<!-- import Vue before Element -->
<script src="https://unpkg.com/vue/dist/vue.js"></script>
<!-- import JavaScript -->
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script>
    new Vue({
        el: '#app',
        data() {
            return {
                isCollapse: false,
                allArticles: [],
                defaultOpen: []
            };
        },
        methods: {
            getArticle: function(){
                var that = this;
                var param=new URLSearchParams();
                axios.post('/back/home',param).then(function (result) {
                    var obj = JSON.parse(JSON.stringify(result));
                    var json = obj.data;
                    that.allArticles = json;
                });
            }
        },
        created: function() {
            this.getArticle();
        }
    })
</script>

<style>
    .el-header, .el-footer {
        background-color: #B3C0D1;
        color: #333;
        text-align: center;
        line-height: 60px;
    }

    .el-aside {
        background-color: #D3DCE6;
        color: #333;
        text-align: center;
        line-height: 200px;
    }

    .el-main {
        background-color: #E9EEF3;
        color: #333;
        text-align: center;
        line-height: 160px;
    }

    body > .el-container {
        margin-bottom: 40px;
    }

    .el-container:nth-child(5) .el-aside,
    .el-container:nth-child(6) .el-aside {
        line-height: 260px;
    }

    .el-container:nth-child(7) .el-aside {
        line-height: 320px;
    }
</style>

</html>
