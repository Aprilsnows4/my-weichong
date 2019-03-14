<template>
    <div class="app-three">
        <mt-header></mt-header>
        <!-- 轮播图 -->
        <mt-swipe :auto="2000">
            <mt-swipe-item v-for="item of list">
                <img :src="item.img_url" >
            </mt-swipe-item>
        </mt-swipe>
        <div class="app-white"></div>
        <div class="app-like">
            <img src="img/维宠APP/5维宠切图/宠友圈切图/周三见/赞@2x.png" alt="">喜欢 &nbsp;
            <img src="img/维宠APP/5维宠切图/宠友圈切图/周三见/收藏@2x.png"  alt="">收藏
        </div>
        <!-- 分割块 -->
        <div class="app-kuai"></div>
        <!-- 获奖感言 -->
        <ul class="app-bear">
            <li class="app-content">
                <p class="app-title">狗狗介绍：</p>
                <p class="app-lang">布布做为一只美博，具有美博的优点，大大的眼睛，性感的身材</p>
            </li>
            <li class="app-content">
                <p class="app-title">推荐原因：</p>
                <p class="app-lang">布布做为一只美博，具有美博的优点，大大的眼睛，性感的身材</p>
            </li>
            <li class="app-content">
                <p class="app-title">获奖感言：</p>
                <p class="app-lang">布布做为一只美博，具有美博的优点，大大的眼睛，性感的身材</p>
            </li>
        </ul>

    </div>
</template>
<script>
import Header from "../sub/Header.vue"
export default{
    data() {
        return {
            list:[
                {img_url:"img/维宠APP/5维宠切图/宠友圈切图/周三见/banner1.jpg"},
                {img_url:"img/维宠APP/5维宠切图/宠友圈切图/周三见/banner2.jpg"},
                {img_url:"img/维宠APP/5维宠切图/宠友圈切图/周三见/banner3.jpg"}
        ]
        }
    },
    components:{
        "mt-header":Header
    }
}
</script>
<style>
.app-three{
    background: #ffffff;
}
/* 轮播图 */
.app-three .mint-swipe{
    height:150px;
}
.app-three .mint-swipe img{
    position: relative;
    top: -2px;
    width:100%;
}
.app-three .app-like {
    position: relative;
    margin-left: 240px;
    padding: 10px;
}
.app-three .app-like img {
    width: 15px;
    height: 15px;
}
.app-three .app-kuai{
    width: 100%;
    height: 10px;
    background: #dddddd;
}
.app-three .app-bear .app-content {
    border-bottom:1px solid #dddddd;
    padding: 30px 40px;
 }
.app-three .app-bear .app-content .app-title{
    font-size:16px;
    color: #333;

}
.app-three .app-bear .app-content .app-lang{
    text-indent: 30px;
    color: #333333;
}
</style>