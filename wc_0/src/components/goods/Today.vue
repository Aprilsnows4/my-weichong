<template>
    <div class="app-today">
    <!-- 头部 -->
    <mt-header></mt-header>  
    <div class="app-rec">
            <ul class="app-rlist">
                <li class="app-item">
                    <a href=""><img src="img/维宠APP/5维宠切图/商城切图/购物车/图层9@2x.png"> </a>  
                    <p>泰迪衣服冬季加厚,珊瑚绒幼犬小狗变身装宠物狗狗...</p> 
                    <p>小米绅士猴,温暖可爱!萌翻全场</p>        
                    <p>
                        <span>￥26.80</span><span>￥88.80</span>
                    </p>  
                    <img src="img/维宠APP/5维宠切图/商城切图/购物车/包邮@2x.png">
                </li>
                <li class="app-item">
                    <a href=""><img src="img/维宠APP/5维宠切图/商城切图/购物车/图层9@2x.png"> </a>  
                    <p>泰迪衣服冬季加厚,珊瑚绒幼犬小狗变身装宠物狗狗...</p>     
                    <p>小米绅士猴,温暖可爱!萌翻全场</p>
                    <p>
                        <span>￥26.80</span><span>￥88.80</span>
                    </p>  
                    <img src="img/维宠APP/5维宠切图/商城切图/购物车/包邮@2x.png">
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
import Header from "../sub/Header.vue"
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
/* 推荐商品 */
.app-today .app-rec{
    display: flex;
}
.app-today .app-rec .app-rlist{
    list-style: none;
    padding: 0px;
    display: flex;
    flex-flow: row wrap;
    justify-content: space-around;
}
.app-today .app-rec .app-rlist .app-item{
    display: flex;
    flex-flow: column wrap;
    width: 49%;
    padding: 10px;
    border:1px solid #dddddd
}
.app-today .app-rec .app-rlist .app-item  a img{
    width: 100%;
}
/* 推荐商品 */
.app-today .app-rec .app-rlist .app-item>:last-child{
    width: 40px;
    height: 18px;
}
.app-today .app-rec .app-rlist .app-item>:nth-child(4)>:first-child{
    color: red;
    font-size: 16px;
    margin:10px;
}
.app-today .app-rec .app-rlist .app-item>:nth-child(4)>:last-child{
    text-decoration:line-through 
}
.app-today .app-rec .app-rlist .app-item>:nth-child(2){
    color: #333;
    font-size: 14px;
    margin-top: 10px;
    border-top: 1px solid #dddddd;
}
.app-today .app-rec .app-rlist .app-item>:nth-child(3){
    font-size: 12px;
}
</style>