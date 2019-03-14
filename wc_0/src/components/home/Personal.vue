<template>
    <div class="app-nal">
        <!-- 引入头内容 -->
        <mt-header></mt-header>
        <!-- 个人资料表 -->
            <ul class="app-bank">
                <li>
                    <a href="#">我的收藏</a>
                    <span><img src="img/维宠APP/5维宠切图/个人中心切图/我的二维码/QQ截图20180115120737@2x.png" alt="">&nbsp;&gt;</span>    
                </li>
                <li>
                    <a href="#">
                        昵称 
                    </a>
                    <span>旺仔牛奶 汪汪&nbsp;&gt;</span>
                </li>
                <li>
                    <a href="#">维宠号</a>
                    <span>123456&nbsp;&gt;</span>
                </li>
                <li>
                    <a href="#">我的等级</a>
                    <span>Lv1&nbsp;&gt;</span>
                </li>
                <li>
                    <a href="#">二维码</a>
                    <span>&nbsp;&gt;</span>
                </li>
                <!-- 分割块 -->
                <div class="app-kuai"></div>
                <li>
                    <a href="#">
                        性别
                    </a>
                    <span>女</span>
                </li>
                <li>
                    <a href="#">年龄</a>
                    <span>20</span>
                </li>
                <li>
                    <a href="#">喜欢的宠物</a>
                    <span>撸猫</span>
                </li>
                <li>
                    <a href="#">宠龄</a>
                    <span>10年</span>
                </li>
            </ul>
            <div class="app-kuai"></div>
            <mt-button type="default" size="large" @click="out">退出</mt-button>
    </div>
</template>
<script>
import Header from "../sub/Header"
import {Toast} from "mint-ui"
export default {
    data() {
        return {
            
        }
    }, 
    methods: {
        out(){
            var url = "http://127.0.0.1:3000/personal"
            this.axios.get(url).then(result=>{
                Toast("用户已退出登录")
            })
        }
    },
    components:{
        "mt-header":Header
    }   
}
</script>
<style>

.app-nal .app-bank{
    background: #ffffff;
    margin: 0;
    padding: 0;
    list-style: none;
    display: flex;
    flex-direction: column;
    position: relative;
}
.app-nal .app-bank li{
    border-bottom: 1px solid #dddddd;
    line-height: 40px;
    display: flex;
    flex-flow: row wrap;
    justify-content: space-between;
    margin:0 10px;
}
.app-nal .app-bank li a{
    text-decoration: none; 
    color: #333;
    font-size: 14px;
}
.app-nal .app-bank li  span{
    color: #555454;
    font-size: 14px;
}
.app-nal .app-bank>:first-child span>img{
    width: 20px;
    height: 20px;
    position: relative;
    top: 5px;
}
/* 分割块 */
.app-nal  .app-bank .app-kuai{
    background: #dddddd;
    width: 100%;
    height: 15px;
}
.app-nal  .app-kuai{
    background: #dddddd;
    width: 100%;
    height: 15px;
}

</style>