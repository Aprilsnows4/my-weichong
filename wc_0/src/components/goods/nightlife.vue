<!-- 夜生活 -->
<template> 
    <div class="app-nig">
        <mt-header></mt-header>
        <ul class="app-yue">
            <li>
                <img class="app-big" src="img/维宠APP/5维宠切图/宠友圈切图/夜生活/屏幕快照2018-01-18下午2.23.21@2x.png" alt="">
            </li>
            <li>
                <img src="img/维宠APP/5维宠切图/宠友圈切图/夜生活/屏幕快照2018-01-18下午2.22.02@2x.png" alt="">
                <img src="img/维宠APP/5维宠切图/宠友圈切图/夜生活/屏幕快照2018-01-18下午2.22.13@2x.png" alt="">
            </li>
        </ul>
        <!-- 块区 -->
    <div class="app-kuai"></div>
        <ul class="app-name">
            <li  class="app-li app-left">
                <span> <img src="img/1.png" alt=""> </span>
                <span>姓名</span>
                <span>年龄</span>
                <span>性别</span>
                <span>距离</span>
            </li>
            <li class="app-li" v-for="item of list">
                <span><img :src="item.img_url"></span>
                <span>{{item.uname}}</span>
                <span>{{item.ages}}</span>
                <span><img :src="item.sex" class="app-sex"></span>
                <span>{{item.short}}</span>
            </li>
        </ul>        
   
    </div>
</template>
<script>
import Header from "../sub/Header.vue"
    export default{
        data() {
            return {
                list:[]
            }
        },
        methods: {
            night(){
            var url = "http://127.0.0.1:3000/nightlife"
            this.axios.get(url).then(result=>{
                this.list = result.data;
                console.log(result.data)
            })
        },
        },
        created() {
            this.night();
        },
        components:{
        "mt-header":Header
    }
    }
</script>
<style>
.app-nig{
    background: #ffffff
}
.app-nig .app-yue{
    display: flex;
    flex-flow: row wrap;
    list-style: none;
    justify-content: space-around;
    padding: 0;
    align-items: center;
    margin:  10px;
    height: 140px;
}
.app-nig .app-yue li {
    width: 48%;
}
.app-nig .app-yue li .app-big{
    height: 135px;
}
.app-nig .app-yue li>img{
    width: 100%;
}
.app-nig .app-kuai{
    height: 10px;
    background: #dddddd;
    }
.app-nig .app-name{
    width:100%;
    display: flex;
    flex-flow: column wrap;
    list-style: none;
    justify-content: space-around;
    padding: 0;
    margin:0;
}
.app-nig .app-name .app-li{
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-around;
    border-bottom: 1px solid #dddddd;
    margin:0;
    padding: 0;
    align-items: center;
    line-height: 40px;
    margin:0 10px;
}
.app-nig .app-name .app-li span{
    width: 80px;
    overflow: hidden; /*自动隐藏文字*/
    text-overflow: ellipsis;/*文字隐藏后添加省略号*/
    white-space: nowrap;/*强制不换行*/
}
.app-nig .app-name .app-li .app-sex{
    width: 15px;
    height: 15px;
}
</style>