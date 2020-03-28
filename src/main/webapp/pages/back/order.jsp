<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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


<style>
    body {
        margin: 0px;
        padding: 0px;
    }
</style>

<body>
<div id="app">
    <template>
        <el-button @click="getAllOrder(0)">全部订单</el-button>
        <el-button @click="getAllOrder(1)">已下单</el-button>
        <el-button @click="getAllOrder(2)">取消订单</el-button>
        <el-button @click="getAllOrder(4)">已发货</el-button>
        <el-table
                :data="tableData1"
                border
                height="700px"
                max-height="1000px"
                v-if="isShow1"
                style="width: 100%;">
            <el-table-column
                    prop="id"
                    label="id"
                    width="180"
                    v-if="false">
            </el-table-column>
            <el-table-column
                    prop="username"
                    label="姓名"
                    min-width="10%">
            </el-table-column>
            <el-table-column
                    prop="receivePhone"
                    label="手机号"
                    min-width="10%">
            </el-table-column>
            <el-table-column
                    prop="cretateTime"
                    label="下单时间"
                    min-width="15%">
            </el-table-column>
            <el-table-column
                    prop="orderStatusStr"
                    label="订单状态"
                    min-width="10%">
            </el-table-column>
            <el-table-column
                    prop="address"
                    label="下单地址"
                    min-width="35%">
            </el-table-column>
            <el-table-column
                    prop="orderCode"
                    label="订单号"
                    min-width="15%">
            </el-table-column>
            <el-table-column
                    fixed="right"
                    label="操作"
                    min-width="10%">
                <template slot-scope="scope">
                    <el-button type="text" v-if="isShow1" size="small" @click="see(scope.row)">查看</el-button>
                    <el-button type="text" v-if="isShow" size="small" @click="update4(scope.row)">发货</el-button>
                    <el-button @click="update3(scope.row)" type="text" size="small" :plain="true">
                        删除
                    </el-button>
                </template>
            </el-table-column>
        </el-table>


        <el-table
                :data="tableData2"
                border
                height="700px"
                max-height="1000px"
                v-if="!isShow1"
                style="width: 100%;">
            <el-table-column
                    prop="id"
                    label="id"
                    v-if="false"
                    min-width="10%">
            </el-table-column>
            <el-table-column
                    prop="name"
                    label="商品名称"
                    min-width="10%">
            </el-table-column>
            <el-table-column
                    prop="price"
                    label="价格"
                    min-width="10%">
            </el-table-column>
            <el-table-column
                    prop="detail"
                    label="商品详情"
                    min-width="50%"
                    show-overflow-tooltip="700px">
            </el-table-column>
            <el-table-column
                    prop="area"
                    label="城市"
                    min-width="10%">
            </el-table-column>
            <el-table-column
                    prop="buyNum"
                    label="数量"
                    min-width="10%">
            </el-table-column>
        </el-table>


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
                tableData1: [],
                tableData2: [],
                isShow: false,
                isShow1: true,
            };
        },
        methods: {
            getAllOrder: function (num) {
                var that = this;
                if (num == 1) {
                    that.isShow = true;
                } else {
                    that.isShow = false;
                }
                that.isShow1 = true;
                var param = new URLSearchParams();
                param.append("isAll", num);
                axios.post('/order/getAllOrder', param).then(function (result) {
                    var obj = JSON.parse(JSON.stringify(result));
                    var json = obj.data;
                    that.tableData1 = json;
                });
            },
            update4(row) {
                var that = this;
                var param = new URLSearchParams();
                param.append('orderId', row.id);
                param.append('orderStatus', 4);
                axios.post('/order/updateStatus', param).then(function (result) {
                    that.$message({
                        message: '发货成功',
                        center: true
                    });
                });
                this.getAllOrder(0);
            },
            update3(row) {
                var that = this;
                var param = new URLSearchParams();
                param.append('orderId', row.id);
                param.append('orderStatus', 6);
                axios.post('/order/updateStatus', param).then(function (result) {
                    that.$message({
                        message: '删除成功',
                        center: true
                    });
                });
                this.getAllOrder(0);
            },
            see(row) {
                var that = this;
                that.isShow1 = false;
                var param = new URLSearchParams();
                param.append('id', row.id);
                axios.post('/before/selectOrderGoodsInfo', param).then(function (result) {
                    var obj = JSON.parse(JSON.stringify(result));
                    var json = obj.data;
                    that.tableData2 = json;
                });
            }
        },
        created: function () {
            this.getAllOrder(0);
        }
    })
</script>


</html>
