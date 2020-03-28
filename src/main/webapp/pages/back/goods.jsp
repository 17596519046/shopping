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

        <el-button v-if="isShow" @click="addGoos">添加商品</el-button>
        <el-input style="width:300px"  v-if="isShow" v-model="findText" placeholder="请输入搜索内容"></el-input>
        <el-button v-if="isShow" @click="findGoods">搜索</el-button>
        <el-table
                :data="tableData"
                border
                height="700px"
                style="width: 100%" v-if="isShow">
            <el-table-column
                    prop="name"
                    label="商品名称"
                    min-width="15%">
            </el-table-column>
            <el-table-column
                    prop="price"
                    label="价格"
                    min-width="7%">
            </el-table-column>
            <el-table-column
                    prop="area"
                    label="城市"
                    min-width="8%">
            </el-table-column>
            <el-table-column
                    prop="num"
                    label="库存"
                    min-width="10%">
            </el-table-column>
            <el-table-column
                    prop="detail"
                    label="详情"
                    min-width="45%"
                    show-overflow-tooltip="38%">
            </el-table-column>
            <el-table-column
                    fixed="right"
                    label="操作"
                    min-width="15%">
                <template slot-scope="scope">
                    <el-button type="text" size="small" @click="editItem(scope.row)">编辑</el-button>
                    <el-button @click="deleteClick(scope.row)" type="text" size="small" :plain="true">
                        删除
                    </el-button>
                </template>
            </el-table-column>
        </el-table>

        <el-form :model="ruleForm" status-icon ref="ruleForm" label-width="100px" class="demo-ruleForm" v-if="!isShow">
            <el-form-item label="商品名称" prop="name">
                <el-input type="name" v-model="ruleForm.name" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="id" prop="id" v-if="false">
                <el-input type="id" v-model="ruleForm.id" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="价格" prop="price">
                <el-input type="price" v-model="ruleForm.price" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="城市" prop="area">
                <el-input type="area"  v-model="ruleForm.area"></el-input>
            </el-form-item>
            <el-form-item label="库存" prop="num">
                <el-input v-model.number="ruleForm.num"></el-input>
            </el-form-item>
            <el-form-item label="详情" prop="detail">
                <el-input
                        type="textarea"
                        :rows="4"
                        placeholder="请输入内容"
                        v-model="ruleForm.detail">
                </el-input>
            </el-form-item>
            <el-form-item label="图片" prop="img">
                <el-upload
                        class="avatar-uploader"
                        name="file"
                        action="/before/upload"
                        :show-file-list="false"
                        :on-success="handleAvatarSuccess"
                        :before-upload="beforeAvatarUpload">
                    <img :src="ruleForm.img" class="avatar">
                    <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                </el-upload>
            </el-form-item>
            <el-form-item>
                <el-button type="primary" @click="submitForm(ruleForm)">提交</el-button>
            </el-form-item>
        </el-form>

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
                tableData: [],
                isShow: true,
                ruleForm: {
                    name: '',
                    price: '0.00',
                    detail: '',
                    area: '',
                    num: 0,
                    id: 0,
                    img: ''
                },
                value: '',
                findText: '',
                imageUrl: ''
            };
        },
        methods: {
            getAllGoods: function () {
                var that = this;
                var param = new URLSearchParams();
                axios.get('/goods/getAllGoods', param).then(function (result) {
                    var obj = JSON.parse(JSON.stringify(result));
                    var json = obj.data;
                    that.tableData = json;
                });
            },
            findGoods() {
                var that = this;
                var param = new URLSearchParams();
                param.append('name', that.findText);
                console.log(that.findText);
                axios.post('/goods/getAllGoods', param).then(function (result) {
                    var obj = JSON.parse(JSON.stringify(result));
                    var json = obj.data;
                    that.tableData = json;
                });
            },
            deleteClick(row) {
                var that = this;
                var param = new URLSearchParams();
                param.append('goodsId', row.id)
                axios.post('/goods/deleteGoods', param).then(function (result) {
                    that.$message({
                        message: '删除成功',
                        center: true
                    });
                });
                this.getAllGoods();
            },
            editItem(row) {
                var that = this;
                that.isShow = false;
                that.ruleForm = row;
                that.value = row.roleId;
            },
            addGoos() {
                var that = this;
                that.isShow = false;
            },
            submitForm(formName) {
                var that = this;
                var param = new URLSearchParams();
                if (formName.id == undefined) {
                    param.append("id",0);
                } else {
                    param.append("id",formName.id);
                }
                param.append("name", formName.name);
                param.append("price", formName.price);
                param.append("detail", formName.detail);
                param.append("area", formName.area);
                param.append("num", formName.num);
                param.append("img", this.imageUrl);
                axios.post('/goods/addGoods', param).then(function (result) {
                    that.$message({
                        message: '成功',
                        center: true
                    });
                });
                formName.price = '0.00';
                formName.name = '';
                formName.detail = '';
                formName.area = '';
                formName.num = 0;
                formName.img = '';
                formName.id = 0;
                that.isShow = true;
                this.getAllGoods();
            },
            handleAvatarSuccess(res, file) {
                this.ruleForm.img = URL.createObjectURL(file.raw);
                var img = 'http://47.101.145.236'+res
//                alert(img)
                this.imageUrl = img;
            },
            beforeAvatarUpload(file) {
                const isJPG = file.type === 'image/jpeg';
                const isLt2M = file.size / 1024 / 1024 < 2;

                if (!isJPG) {
                    this.$message.error('上传头像图片只能是 JPG 格式!');
                }
                if (!isLt2M) {
                    this.$message.error('上传头像图片大小不能超过 2MB!');
                }
                return isJPG && isLt2M;
            }
        },
        created: function () {
            this.getAllGoods();
        }
    })
</script>

<style>
    .avatar-uploader .el-upload {
        border: 1px dashed #d9d9d9;
        border-radius: 6px;
        cursor: pointer;
        position: relative;
        overflow: hidden;
    }
    .avatar-uploader .el-upload:hover {
        border-color: #409EFF;
    }
    .avatar-uploader-icon {
        font-size: 28px;
        color: #8c939d;
        width: 178px;
        height: 178px;
        line-height: 178px;
        text-align: center;
    }
    .avatar {
        width: 178px;
        height: 178px;
        display: block;
    }
</style>
</html>
