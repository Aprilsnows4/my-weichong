    <!-- 商品详情 -->
<template>
    <div class="app-shop">
        <!-- 引入头 -->
        <mt-header></mt-header>
        <!-- 商品介绍 -->
        <div class="mui-card" >
            <div class="mui-card-header mui-card-media" style="height:83vw">
                <img :src="img_url" >
            </div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <p class="app-ap">{{title}}</p>
                    <p style="color: #333;">
                        <span class="app-intr">{{lic}}</span>
                        <span class="app-pri">￥{{pri1}}<s>￥{{pri2}}</s></span>
                    </p>
                </div>
            </div>
            <div class="mui-card-footer">
                <a class="mui-card-link">快递:{{pri2}}</a>
                <a class="mui-card-link">月销：{{sale}}笔</a>
                <a class="mui-card-link">{{addres}}</a>
            </div>
        </div>
        <!-- 领取优惠券 -->
        <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <div class="app-div">
                        <img src="img/维宠APP/5维宠切图/首页切图/商品详情/优惠劵@2x.png">&nbsp;&nbsp;&nbsp;
                        优惠券：
                        <span>领取优惠券</span>
                    </div>
                    <div class="app-div">
                        <img src="img/维宠APP/5维宠切图/首页切图/商品详情/优惠劵@2x.png">&nbsp;&nbsp;&nbsp;
                        积分：购买此商品可获得
                        <span>10宠币</span>
                    </div>
                    <ul class="app-ul">
                        <li>
                            <span>正品保障</span>
                            <img src="img/维宠APP/5维宠切图/首页切图/商品详情/选中@2x.png">
                        </li>
                        <li>
                            <span>极速退款</span>
                            <img src="img/维宠APP/5维宠切图/首页切图/商品详情/选中@2x.png">
                        </li>
                        <li>
                            <span>运险费</span>
                            <img src="img/维宠APP/5维宠切图/首页切图/商品详情/选中@2x.png">
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 已选中商品 -->
        <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <div class="app-div">
                        <a href="javascript:;">
                            <img src="img/维宠APP/5维宠切图/首页切图/商品详情/加入购物车@2x.png">
                            <input type="button" value="加入购物车" @click="adds">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 宝贝评价 -->
        <div class="mui-card">
            <div class="mui-card-header mui-card-media">
                <p>————&nbsp;<span>评价</span>&nbsp;————</p>
            </div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <p class="app-eva"> 
                        <span>宝贝评价（123456）</span> 
                        <ul>
                            <li><img src="img/维宠APP/5维宠切图/首页切图/评价/宠物爱吃@2x.png" ></li>
                            <li><img src="img/维宠APP/5维宠切图/首页切图/评价/服务好@2x.png" ></li>
                            <li><img src="img/维宠APP/5维宠切图/首页切图/评价/速度快@2x.png" ></li>
                            <li><img src="img/维宠APP/5维宠切图/首页切图/评价/会回购@2x.png" ></li>
                            <li><img src="img/维宠APP/5维宠切图/首页切图/评价/宠物爱吃@2x.png" ></li>
                            <li><img src="img/维宠APP/5维宠切图/首页切图/评价/宠物爱吃@2x.png" ></li>
                        </ul>
                    </p>
                </div>
            </div>
            <div class="mui-card-footer" v-for="(item,i) of theroy" :key="i">
                <p style="color: #333;">
                    <img class="app-tou" :src="item.img_url">
                    <span class="app-nam">{{item.tname}}</span>
                    <br>
                    <span class="app-nei">{{item.tcon}}
                    </span>
                </p>
            </div>
            <button @click="getMore()">查看全部评价</button>
        </div>
        <!-- 商品详情 -->
        <div class="mui-card">
            <div class="mui-card-header mui-card-media">
                <p>————&nbsp;<span>详情</span>&nbsp;————</p>
            </div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <p class="app-eva"> 
                        <img :src="img_good">
                    </p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import Header from "../sub/Header.vue"
import {Toast}  from "mint-ui"
export default{
    data(){
        return{
            list:[],
            theroy:[] ,
            pon:0,
            pageSize:2,
            img_url:"",
            title:"",
            lic:"",
            pri1:0,
            pri2:0,
            pri3:0,
            sale:"",
            addres:"",
            img_good:""
        }
    },
    methods: {
        // 加入购物车
        adds(){
            // 商品参数
            var nid = this.$route.query.id
            var pri = this.pri1;
            var title = this.title;
            console.log(title)
            var cont = this.lic;
            console.log(cont)
            var img_url = this.img_url;
             var count = 1 
            var url = "http://127.0.0.1:3000/shopcard?nid="+nid+"&price="+pri+"&title="+title+"&cont="+cont+"&img_url="+img_url+"&count="+count
            this.axios.get(url).then(result=>{
               Toast(result.data)
            })
        },
        imagedetail(){
            // 商品的id
          var a = this.$route.query.id;
        //   跳转不同的商品列表
          var b = this.$route.query.lname;
          console.log(b);
          console.log(a);
          var url = "http://127.0.0.1:3000/"+b+"?did="+a
          this.axios.get(url).then(result=>{
               console.log(result.data);
            this.list = result.data
            if(this.list.length>0){
               this.img_url = this.list[0].img_url
               this.title = this.list[0].title
               this.lic = this.list[0].lic
               this.pri1 = parseInt(this.list[0].pri1).toFixed(2)
               this.pri2 = parseInt(this.list[0].pri2).toFixed(2)
               this.pri3 = parseInt(this.list[0].pri3).toFixed(2)
               this.sale = this.list[0].sale
               this.addres = this.list[0].addres
               this.img_good = this.list[0].img_good 
            }

          })
        },
        getMore(){  
            this.pon++;
            // 商品评论路径 imagetheroy  到时候
            var sql = "http://127.0.0.1:3000/imagetheroy?pon="+this.pon+"&pageSize="+this.pageSize+"&pid="+this.$route.query.id
            this.axios.get(sql).then(result=>{
                console.log(result.data);
                var rows = this.theroy.concat(result.data) 
                this.theroy = rows
            })
        }
    },
    created() {
        this.imagedetail();
        this.getMore();
    },
    components:{
        "mt-header":Header
    }
}
</script>
<style>
.app-shop .mui-card .mui-card-header img{
    width: 100%;
    height: 290px;
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-ap {
    color: #000;
    font-size: 14px;
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-intr{
    color:  rgb(188, 188, 188);
    font-size: 12px;
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-pri{
    color: rgb(255, 93, 29);
    font-size: 14px;
    font-weight: bold;
    position: relative;
    left: 70px;
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-pri s{
    color: rgb(149, 149, 149);
    font-weight: lighter;
}
.app-shop .mui-card .mui-card-footer .app-tou{
    width: 30px;
    height: 30px;
}
.app-shop .mui-card .mui-card-footer a{
    color: #000;
    font-size: 12px;
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner{
    padding: 5px;
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-ul {
    list-style: none;
    display: flex;
    flex-flow: row wrap;
    justify-content: space-between;
    line-height: 27px;
    margin: 0;
    padding: 0;
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-ul li>span{
    color: rgb(149, 149, 149);
    font-size: 12px; 
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-ul li>img{
    width: 21px;
    height: 21px;
    position: relative;
    top: 6px;    
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-div a  {
    color: #000;
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-div img {
    width: 25px;
    height: 20px;
    position: relative;
    top: 5px;
    left: 5px;   

}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-div span{
    color: rgb(255, 93, 29);
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-div input{
    position: relative;
    left: 200px;
    border: 1px solid orangered;
    color: orangered;
}
/*评价*/
.app-shop .mui-card .mui-card-media{
    text-align: center;
}
.app-shop .mui-card .mui-card-media p{
    padding: 0;
    margin: 0;
}
.app-shop .mui-card .mui-card-media p>span{
    color: #000;
    font-size: 16px;
}
/**/
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-eva span{
    color: rgb(255, 93, 29);
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-eva ul {
    list-style: none;
    display: flex;
    flex-flow: row wrap;
    margin: 5px 0;
    padding: 0;
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-eva ul li img{
    width: 70px;
    height: 24px;
    margin-left: 10px;
}
.app-shop .mui-card .mui-card-footer img{
    margin: 0;
    padding: 0;
}
.app-shop .mui-card .mui-card-footer .app-nam{
    position: relative;
    top: -15px;
    color: rgb(40, 155, 208)
}
.app-shop .mui-card .mui-card-footer .app-nei{
    position: relative;
    top: -15px;
    margin: 0 0 0 30px;
}
.app-shop .mui-card  button{
    margin: 0 0 10px 0;
    margin-left: 35%;
    padding: 0px;
    width: 120px;
    height: 35px;
    border: 1px solid rgb(225, 93, 39);
    border-radius: 5px;
    color:  rgb(225, 93, 39);
}
.app-shop .mui-card .mui-card-content .mui-card-content-inner .app-eva img{
    width: 100%;
}
</style>