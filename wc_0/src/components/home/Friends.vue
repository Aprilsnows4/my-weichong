<template>
    <div  class="app-fid">
        <!-- 头部 -->
        <mt-header></mt-header>
        <!-- 卡片 -->
        <div class="app-card">
            <ul class="app-item">
                <li><router-link to="/Threeday"><img src="img/维宠APP/5维宠切图/首页切图/首页/周三见@2x.png"></router-link></li>
                <li><router-link to="/nightlife"><img src="img/维宠APP/5维宠切图/首页切图/首页/“夜”生活@2x.png"></router-link></li>
            </ul>
        </div>
        <div class="app-tic">
            <img src="img/维宠APP/5维宠切图/宠友圈切图/专家论坛/QQ截图20180115120737@2x.png" alt="">
            <div class="app-nam">
                <span class="app-nem">小宝宝丝丝</span>
                <span class="app-new">2017年12月31日 &nbsp;&nbsp;&nbsp; 下午9:00</span>
            </div>
            <div class="app-fous">
                    ＋<span>关注</span>
            </div>
        </div>
        <div class="app-content">
            <span class="app-con">今天是个好日子今天是个好日子今天是个好日子今天是个好日子今天是个好日子今天是个好日子今天是个好日子</span>
        </div>
        <div class="app-dogs">
            <ul class="app-img">
                <li><img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/微信图片_20180115210316@2x.png" alt=""></li>
                <li><img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/微信图片_20180115210316@2x.png" alt=""></li>
                <li><img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/微信图片_20180115210316@2x.png" alt=""></li>
                <li><img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/微信图片_20180115210316@2x.png" alt=""></li>
            </ul>
        </div>
        <div class="app-pra">
            <p>
                <img src="/img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/赞@2x.png">
                <span>4</span>
            </p>
            <p>
                <img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/评论@2x.png" >
                <span>7</span>
            </p>
        </div>
        <div class="app-cap">
            <img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png" >
            <img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2@2x.png" >
            <img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层4@2x.png" >
            <img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层5@2x.png" >
            <div class="app-com">
                <p>
                    <img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层5@2x.png">
                    <span class="app-col">你傻傻的：</span><span>这是个筛阿萨德</span>
                </p>
                <p>
                    <img src="img/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层5@2x.png">
                    <span class="app-col">你傻傻的：</span><span>这是个筛阿萨德</span>
                </p>
            </div>
            <button>查看所有评论</button>
        </div>
    </div>
</template>
<script>
import Header from  "../sub/Header.vue"
export default{
    data() {
        return {
            
        }
    },
    components:{
        "mt-header":Header
    }
}
</script>
<style>
    /* 卡片   */
.app-fid .app-card{
    background: #ffffff;
    width: 100%;
    height: 120px;
    margin: 10px 0;
    position: relative;

}
.app-fid .app-card .app-item{
    position: absolute;
    top: 11px;
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-flow: row wrap;
    justify-content: space-around;
}
.app-fid .app-card .app-item li{
    width: 48%;
}
.app-fid .app-card .app-item li a img{
    width: 100%;
}
    /* 评论 */
.app-fid .app-tic{
    position: relative;
    display: flex;
    background: #ffffff;
    padding: 10px;
    border-bottom: 1px solid #ddd;
}
.app-fid .app-tic img{
    width: 45px;
    height: 45px;
}
.app-fid .app-tic .app-nam{
    display: flex;
    flex-direction: column;
    margin: 0 10px;
}
.app-fid .app-tic .app-nam .app-men{
    font-size: 14px;
    color: #333333
} 
.app-fid .app-tic .app-nam .app-new{
    color: #999999;
    font-size: 12px;    
}
.app-fid .app-tic .app-fous{
    position: absolute;
    right: 10px;
    color: rgb(40, 155, 215);
    font-size: 14px;
    border:1px solid #dddddd;
    border-radius: 10%;
    width: 50px;
    top: 20px;
}
/* 评论内容 */
.app-fid .app-content{
    background: #ffffff;
    width: 100%;
    padding: 10px 20px;
    text-indent:30px
}
.app-fid .app-content .app-con{
    font-size: 14px;
    color: #333333;
}
/* 宠物照片 */
.app-fid .app-dogs{
    background: #ffffff;
    position: relative;
    border-bottom: 1px solid #ddd;
}
.app-fid .app-dogs .app-img{
    list-style: none;
    padding: 20px 150px 10px 50px;
    margin: 0;
    display: flex;
    flex-flow: row wrap;
    justify-content: space-around;
}
.app-fid .app-dogs .app-img li{
    width: 48%;
}
.app-fid .app-dogs .app-img li img{
    width: 100%;
}
/* 赞  */
.app-fid .app-pra{
    display: flex;
    position: absolute;
    background: #ffffff;
    right: 25px;
    top: 520px; 
}
.app-fid .app-pra p {
    margin: 0 5px;

}
.app-fid .app-pra p img{
    width: 15px;
    height: 15px;
}
/* 头像 */
.app-fid .app-cap{
    background: #eeeeee;
    border-bottom: 1px solid #bbbbbb; 
    margin-left: 30px;
    margin: 5px 20px;
}
.app-fid .app-cap img{
    margin-left: 5px;
    padding-top: 5px;
}
.app-fid .app-cap .app-com{
    border-top: 1px solid #cccccc;
}
.app-fid .app-cap .app-com p{
    padding-top: 5px;
    padding-left: 5px;
}
.app-fid .app-cap .app-com p img{
    width: 20px;
    height: 25px;
}
.app-fid .app-cap .app-com p .app-col{
    color: rgb(40, 155, 215);
    margin-left: 10px;
}
 .app-fid button{
    background: #eeeeee;
    margin-bottom: 5px;
}
</style>