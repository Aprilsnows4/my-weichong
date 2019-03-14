<template>
    <div class="app-clothes">
        <mt-header></mt-header>
        <!-- 轮播图 -->
        <mt-swipe auto:2000>
            <mt-swipe-item v-for="(item,i) of list" :key="i">
                <img :src="item.img_url">
            </mt-swipe-item>
        </mt-swipe>
        <!-- 商品列表 -->
        <div class="app-tit">
            <span>宠物衣服</span>
        </div>
        <!-- 宠物衣服图片 -->
        <ul class="app-pic">
            <li class="app-min" v-for="item of hlist" :key="item.id">
                <router-link to="/Detail">
                    <img :src=item.img_url>
                </router-link>
                <p class="app-size">{{item.title}}</p>
                <p class="app-cont">{{item.cont}}</p>
                <div class="app-pri">
                    <p>￥{{item.pri1}}</p>
                    <p>￥{{item.pri2}}</p>
                </div>
                <p>
                    <span>{{item.content}}</span>
                    <img :src=item.img_good>
                </p>
            </li>
        </ul>
    </div>
</template>
<script>
import Header from "../sub/Header.vue"
export default{
    data(){
        return{
            list:[],
            hlist:[]
        }
    },
    methods: {
        imageclothes(){
            var url = "http://127.0.0.1:3000/imageclothes"
            this.axios.get(url).then(result=>{
                // console.log(result.data);
                this.list = result.data;
            })
        },
        imageclolist(){
            var url = "http://127.0.0.1:3000/imageclolist"
            this.axios.get(url).then(result=>{
            console.log(result.data);
            this.hlist = result.data;
            })
        }
    },
    created() {
        this.imageclothes()
        this.imageclolist()
    },
    components:{
        "mt-header":Header
    }
}
</script>
<style>
     /* 轮播图 */
.app-clothes .mint-swipe{
    height:150px;
}
.app-clothes .mint-swipe img{
    position: relative;
    top: -2px;
    width:100%;
}
    /* 商品列表 */
.app-clothes .app-tit{
    text-align: center;
    line-height: 40px;
    background: #ffffff;
    border-radius: 5%;
    margin-top: 5px;
}
.app-clothes .app-tit span{
    color: rgb(40, 155, 218);
    font-weight: 500;
    font-size: 18px;
}
/* 宠物衣服图片 */
.app-clothes  .app-pic{
    display: flex;
    flex-flow: row wrap;
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
    justify-content: space-around;
}
.app-clothes  .app-pic li {
    width: 49%;
    background: #ffffff;
    margin-top: 5px;
}
.app-clothes .app-pic .app-max{
    height: 233px;
}
.app-clothes .app-pic .app-pri{
    display: flex;
    flex-flow: row wrap;
    justify-content: space-between;
}
.app-clothes .app-pic .app-pri p{
    margin: 0 15px;
    
}
.app-clothes .app-pic .app-pri>:first-child{
    color: red;
    font-size: 16px;
   
}
.app-clothes .app-pic .app-pri>:last-child{
    text-decoration:line-through;
    
}
.app-clothes .app-pic li a img{
    width: 100%;
    padding: 15px;
}
.app-clothes  .app-pic li p img{
    width: 90px;
    height: 20px;
    margin: 0;
}
.app-clothes  .app-pic li p span{
    font-size: 12px;
    margin-left: 5px;
   
    
}
.app-clothes  .app-pic li .app-size{
    font-size:16px;
    color: #333;
    margin: 0 10px;
}
.app-clothes .app-cont{
    margin: 0 10px;
}
</style>