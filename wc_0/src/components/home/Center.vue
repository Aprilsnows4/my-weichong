<template>
    <!-- 个人中心 -->
    <div class="app-center">
        <mt-header></mt-header>
        <div class="app-hair">
            <img src="img/维宠APP/5维宠切图/个人中心切图/个人中心/矩形1拷贝@2x.png">
            <div>
                <img src="img/维宠APP/5维宠切图/个人中心切图/我的萌宠/IMG_9139@2x.png">
                <span>旺仔牛奶  汪汪</span>
                <ul class="app-goods">
                    <li>
                        <p>256</p>
                        <a href="javascript:;"> 关注</a>  
                    </li>
                    <li>
                        <p>1.1W+</p>
                        <a href="javascript:;"> 粉丝</a>  
                    </li>
                    <li>
                        <P>50</P>
                        <a href="javascript:;"> 足迹</a>       
                    </li>
                </ul>
            </div>
        </div>
        <div class="app-log">
            <div class="app-lis">
                <ul>
                    <li>我的订单</li>
                    <li> <a>查看全部  &gt;</a> </li>
                </ul>
            </div>
            <div class="app-lit">
                <ul>
                    <li>
                        <img src="img/维宠APP/5维宠切图/个人中心切图/个人中心/待付款@2x.png">
                        <p>待付款</p>
                    </li>
                    <li>
                        <img src="img/维宠APP/5维宠切图/个人中心切图/个人中心/待收货@2x.png">
                        <p>待收货</p>
                    </li>
                    <li>
                        <img src="img/维宠APP/5维宠切图/个人中心切图/个人中心/待发货@2x.png">
                        <p>待发货</p>
                    </li>
                    <li>
                        <img src="img/维宠APP/5维宠切图/个人中心切图/个人中心/待评价@2x.png">
                        <p>待评价</p>
                    </li>
                </ul>
            </div>
        </div>
        <ul class="app-ect">
            <li>
                <router-link to="/ShopCard"><span>我的收藏</span>
                </router-link>
                <span>&gt;</span>
            </li>
            <li>
                <a href="javascript:;"><span>我的萌宠</span>
                </a>
                <span>&gt;</span>
            </li>
            <li>
                <a href="javascript:;"><span>我的卡包</span>
                </a>
                <span>&gt;</span>
            </li>
            <li>
                <a href="javascript:;"><span>我的宠币</span>
                </a>
                <span>&gt;</span>
            </li>
            <li class="app-set">
                <router-link to="/Personal"><span>设置</span>
                </router-link>
                <span>&gt;</span>
            </li>
        </ul>
        <div class="app-kuai"></div>
            <mt-button type="default" size="large" @click="out">用户登录</mt-button>
    </div>
</template>
<script>
import Header from "../sub/Header.vue"
export default{
    data(){
        return{}
    },
    components:{
        "mt-header":Header
    },
    methods: {
        out(){
            this.$router.push("/login")
        }
    },
}
</script>
<style>
.app-center .app-hair{
    width: 100%;
    height: 200px;
    position: relative;
}
.app-center .app-hair img{
    width: 100%;
    position: absolute;
}
.app-center .app-hair div{
    position: absolute;
    width: 240px;
    height: 130px;
    background: #ffffff;
    left: 65px;
    top: 40px;
    border-radius: 10%;
    }
.app-center .app-hair div img{
    width: 45px;
    height: 45px;
    position: relative;
    top: 10px;
    left: 15px;
}
.app-center .app-hair div span{
    position: relative;
    font-size: 20px;
    font-weight: 600;
    top: -6px;
    left: 35px;
}
.app-center .app-hair .app-goods{
    position: relative;
    list-style: none;
    padding: 0px;
    margin: 0px;
    justify-content: space-around;
    display: flex;
    flex-flow: row nowrap;
    top: 20px;
}
.app-center .app-hair .app-goods P {
    color: #333;
    text-align: center;
}
.app-center .app-hair .app-goods a {
    color: #666666;
}

.app-center .app-log{
    width: 100%;
    height: 150px;
    background: #ffffff;
    margin: 0;
}

.app-center .app-log .app-lis ul{
    display: flex;
    flex-flow: row wrap;
    justify-content: space-between;
    list-style: none;
    padding: 5px;
    margin: 10px 20px;
    line-height: 30px;
}
.app-center .app-log .app-lis ul li a {
    color: #666666;
    
}
.app-center .app-log .app-lit ul{
    display: flex;
    flex-flow: row wrap;
    justify-content: space-between;
    list-style: none;
    padding: 0;
    margin: 0 20px;
    margin-top: 40px;
    line-height: 22px;
}
.app-center .app-log .app-lit ul img{
    width: 35px;
    height: 35px;
}

.app-center .app-ect{
    margin: 0;
    list-style: none;
    padding: 0;
    margin-top:10px;
}
.app-center .app-ect li {
    width: 100%;
    display: flex;
    flex-flow: row wrap;
    justify-content: space-between;
    background: #ffffff;
    height: 40px;
    line-height: 40px;
    border-bottom: 1px solid #dddddd;
}
.app-center .app-ect li span{
    margin: 0 10px;
    color: #333333;
}
.app-center .app-ect .app-set {
    margin-top:10px;
}
/* 分割块 */
.app-center  .app-bank .app-kuai{
    background: #dddddd;
    width: 100%;
    height: 15px;
}
.app-center  .app-kuai{
    background: #dddddd;
    width: 100%;
    height: 15px;
}
</style>