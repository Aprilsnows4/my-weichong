<template>
 <div class="app-container">
<!--1 添加公共组件 Header-->
 <!-- <mt-header></mt-header> -->
<!--2 占位符用来显示其他组件-->
<router-view></router-view>
<!--3 添加公共组件 tabbar-->
<mt-footer></mt-footer>
 </div>
</template>
<script>
    // 引入
    // import Header from "./components/sub/Header.vue"
     import Footer from "./components/sub/Footer.vue"
    export default{
        data(){
            return{}
        },
        components:{
        //   "mt-header":Header,
             "mt-footer":Footer
         }
    }
</script>
<style>
    body{
        padding-bottom:50px;
    }
</style>
