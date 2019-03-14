    <!-- 首页 -->
<template>
    <div class="app-home">
        <!-- 头部 -->
        <mt-header></mt-header>
        <!--轮播图-->
        <mt-swipe :auto="4000">
            <mt-swipe-item v-for="item of list" :key="item.id">
                <img :src="item.img_url">
            </mt-swipe-item>
        </mt-swipe>   
        <!-- 导航栏 -->
        <ul class="app-nav">
            <li>
                <router-link to="/Swim">
                    <img src="img/维宠APP/5维宠切图/首页切图/首页/洗澡@2x.png">
                    <p class="app-p">洗澡</p>
                </router-link>
            </li>
            <li>
                <router-link to="/Park">
                    <img src="img/维宠APP/5维宠切图/首页切图/首页/寄养@2x.png">
                    <p class="app-p">寄养</p>
                </router-link>
            </li>
            <li>
                <router-link to="/Shoot">
                    <img src="img/维宠APP/5维宠切图/首页切图/首页/摄影@2x.png">
                    <p class="app-p">摄影</p>
                </router-link>
            </li>
            <li>
                <router-link to="/Mould">
                    <img src="img/维宠APP/5维宠切图/首页切图/首页/造型@2x.png">
                    <p class="app-p">造型</p>
                </router-link>
            </li>
        </ul>
        <!-- 分割块 -->
        <div class="app-split">
        </div>
        <!-- 导航图 -->
        <ul class="app-navImage">
            <li v-for="(item,i) of nav" :key="item.id">
                <router-link :to="item.skip">
                    <img :src=item.img_url>
                </router-link>
            </li>
        </ul>
        <!-- 广告图 -->
        <div class="app-ad">
            <router-link to="" href="javascript:;">
                <img src="img/维宠APP/5维宠切图/首页切图/首页/广告@2x.png" alt="">
            </router-link>
        </div>
        <!-- 宠物医院 -->
        <div class="app-pet">
            <span>宠物医院</span>
        </div>
        <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media" v-for="item of eva" :key="item.id">
                <a href="javascript:;">
                    <img class="mui-media-object mui-pull-left" :src=item.img_url>
                    <div class="mui-media-body">
                        <span class="app-tit">{{item.title}}</span> 
                        <p class='mui-ellipsis'>{{item.sit}}</p>
                        <img class="app-dis" :src=item.img_slae>
                        <img class="app-cri" :src=item.img_good>
                        <span class="app-vis">{{item.visit}}</span>
                    </div>
                </a>
            </li>
        </ul>
        <div>
           <mt-button type="default" size="large" @click="getMore()">加载更多</mt-button>  
        </div>
    </div>
</template>
<script>
import Header from "../sub/Header.vue"
export default{
    data() {
        return {
            list:[],
            eva:[],
            nav:[{"img_url":"img/维宠APP/5维宠切图/首页切图/首页/今日推荐@2x.png","skip":"/today"},
                {"img_url":"img/维宠APP/5维宠切图/首页切图/首页/周三见@2x.png","skip":"/Threeday"},
                {"img_url":"img/维宠APP/5维宠切图/首页切图/首页/“夜”生活@2x.png","skip":"/nightlife"},
                {"img_url":"img/维宠APP/5维宠切图/首页切图/首页/专家问答@2x.png","skip":"/Question"}
                ],
            pon:0,
            pageSize:4
        }
    },
    methods: {  

        // 夜生活
        imageList(){
            var url = "http://127.0.0.1:3000/imageList"
            this.axios.get(url).then(result=>{
            // console.log(result.data);
            this.list = result.data;
        });
    }, 
    //     imageNav(){
    //         var url = "http://127.0.0.1:3000/imageNav"
    //         this.axios.get(url).then(result=>{
    //         console.log(result.data);
    //         this.nav = result.data;
    //     })
    // },
        getMore(){
            this.pon++;
            var url = "http://127.0.0.1:3000/imageEva?pon="+this.pon+"&pageSize="+this.pageSize;
            this.axios.get(url).then(result=>{
            //  console.log(result.data);
            var rows = this.eva.concat(result.data);
            this.eva = rows;
            })
        },
},
    created() {
        this.imageList();
        // this.imageNav();
        this.getMore();
    },
    components:{
        "mt-header":Header
    }
}
</script>
<style>
    /* 轮播图 */
.app-home .mint-swipe{
    height:150px;
}
.app-home .mint-swipe img{
    position: relative;
    top: -2px;
    width:100%;
}
/* 导航栏 */
.app-home .app-nav{
    display: flex;
    flex-flow: row nowrap;
    list-style: none;
    padding: 0;
    margin: 0;
    background: #fff;
}
.app-home .app-nav li {
    width: 33%;
    height: 60px;
    line-height: 50px;
    text-align: center;
    margin: 20px;
}
.app-home .app-nav li a img{
    width: 40px;
    height: 36px;
}
.app-home .app-nav  .app-p{
    margin: -25px 0 0 0;
    color: #000;
    
}
/* 分割块 */
.app-home .app-split{
    width: 100%;
    height: 10px;
    background: #eee   
}
/* 导航图 */
.app-home .app-navImage{
    width:100%;
    list-style: none;
    display: flex;
    flex-flow: row wrap;
    justify-content: space-around;
    margin: 0;
    padding: 10px;
    background: #fff;
    
}
.app-home .app-navImage li{
    width: 49%;
}
.app-home .app-navImage li a img{
    width: 100%;
}
.app-home .app-ad a img{
    width: 100%;
}
/* 广告图 */
.app-home .app-ad a img{
    width: 100%;
}
/* 宠物医院 */
.app-home .app-pet{
     background: #fff;
     margin: 5px 0;
     text-align: center;
     width: 100%;
     line-height: 40px;
}
.app-home .app-pet span{
    text-align: center;
    color: #000;
    font-size: 18px;
}
/*附近医院选项*/
.app-home .mui-table-view app-tit  {
    font-size: 14px;
}
.app-home .mui-table-view .mui-ellipsis{
    font-size: 12px;
}
.app-home .mui-table-view .app-dis{
    width: 42px;
    height: 20px;
}
.app-home .mui-table-view .mui-media-object{
    margin-top: 5px;
}
.app-home .mui-table-view .app-cri {
    position: relative;
    width: 70px;
    height: 10px;
    top:-5px;
    left: 5px;
}
.app-home .mui-table-view .app-vis{
    position: relative;
    font-size: 12px;
    left:90px;
    color: rgb(153, 153, 153);
    top: -5px;
}
</style>