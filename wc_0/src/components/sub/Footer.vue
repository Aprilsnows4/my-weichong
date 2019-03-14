<template>
        <div class="app-footer">
            <nav class="mui-bar mui-bar-tab">
                <router-link to="/" class="mui-tab-item mui-active">
                    <span class="mui-icon mui-icon-home"></span>
                    <span class="mui-tab-label">首页</span>
                </router-link>
                <router-link to="/Shop" class="mui-tab-item" >
                    <span class=" mui-icon mui-icon-extra mui-icon-extra-class"></span>
                    <span class="mui-tab-label">商城</span>
                </router-link>
                <router-link to="/Friends" class="mui-tab-item" href="#tabbar-with-contact">
                    <span class="mui-icon  mui-icon-qq"></span>
                    <span class="mui-tab-label">宠有圈</span>
                </router-link>
                <router-link to="/ShopCard" class="mui-tab-item" href="#tabbar-with-contact">
                    <span class="mui-icon   mui-icon-extra mui-icon-extra-cart"></span>
                    <span class="mui-tab-label">购物车</span>
                </router-link>
                <router-link to="/Center" class="mui-tab-item" href="#tabbar-with-map">
                    <span class="mui-icon mui-icon-contact "></span>
                    <span class="mui-tab-label">个人中心</span>
                </router-link>
            </nav>
        </div>
    </template>
    <script>
        export default{
            data(){
                return{}
            }
        }
    </script>
    <style>
    </style>