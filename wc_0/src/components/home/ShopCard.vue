<template>
    <div class="app-card">
        <mt-header></mt-header>
        <div class="app-car" v-for="(item,i) of list" >
            <input type="checkbox" :checked="item.cb" :data-i=i @click="modifyItem">
            <img class="app-img" :src="item.img_url">
            <div class="app-tit">
                <p>{{item.title}}</p>
                <p>{{item.cont}}</p>
                <p>￥{{item.pri1}}</p>
                <button @click="del" :data-id="item.id" :data-i="i">删除</button>
            </div>
            <P class="app-cou">x{{item.count}}</P>
        </div>
        <!-- 全选 -->
        <div class="app-xiaoji">
            <span>小计：￥{{total}}</span>
            <span>
                全选：
            <input type="checkbox" :checked="allcb" @click="selectAll">
            </span>
        </div>
        
        <!-- 分割块 -->
        <div class="app-mas"></div>
        <!-- 推荐商品 -->
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
import {Toast} from "mint-ui"
export default{
    data(){
        return{
            list:[],
            cb:false,
            allcb:false,  // 保存全选复选框状态
            total:0,
            num:0,
            cb:false,
        }
    },
    methods: {
        // 删除购物车商品
        del(e){
            var id = e.target.dataset.id
            var i = e.target.dataset.i
           var url = "http://127.0.0.1:3000/del?id="+id
           this.axios.get(url).then(result=>{
               if(result.data == "删除成功"){
                  var a = this.list.splice(i,1)
                //   console.log(a);
                    Toast("删除成功")
                   
               }
           })
        },
        // 得到商品信息
        getshop(){
            var  url= "http://127.0.0.1:3000/shoplist"
            this.axios.get(url).then(result=>{
                //  console.log(result);
                if(result.data.code == -1){
                    Toast("请登录")
                    this.$router.push("/")
                }
                // this.list = result.data; 
                // 1:接受服务器程序返回的数据
                var rows = result.data;
                // 修改全局购物车数量
                this.$store.commit("updateCount",rows.length);
                // 为每个商品对象添加属性cb  选中状态
                for(var item of rows){
                    item.cb = false;
                }
                // 将最终数组值 返回list 列表
                this.list = rows;
                console.log(this.list)
            }) 
        },
        selectAll(e){
            var cb = e.target.checked;
            // console.log(e)
            this.allcb = cb;
            for(var item of this.list){
                item.cb = cb;
            }
        },
        modifyItem(e){
            // 全选按钮点击事件
            var idx = e.target.dataset.i;
            // 依据全选状态修改数组中的cb修改当前复选状态
            var checked = e.target.checked;
            // 将数组中队形cb状态修改
            this.list[idx].cb=checked;
            // 统计购物车商品选中数量 == list.length
            // 将全选状态修改为true否则为 false
            var count = 0;
            for(var item of this.list){
                if(item.cb){
                    count++;
                }
            }
            if(count==this.list.length){
                this.allcb = true;
            }else{
                this.allcb = false;
            }
        }
    },
    created() {
        this.getshop();
    },
    components:{
        "mt-header":Header
    }
}
</script>
<style>
.app-card .app-car{
    display: flex;
    flex-flow: row nowrap;
    position: relative;
    /* border: 1px solid red; */
    background: #ffffff;
    border-bottom: 1px solid #dddddd

}
.app-card .app-car input {
    position: relative;
    top: 50px;
    margin-left: 10px;
    border-radius: 50%;
    font-size: 14px;
}
.app-card .app-car .app-img {
    margin-top:30px;
    margin-bottom: 10px;
    margin-left: 10px;
    width: 80px!important;
    height: 80px!important;
    
}
.app-card .app-car .app-tit{
    display: flex;
    /* flex-direction: column; */
    flex-flow: column nowrap;
    margin: 20px;
}
.app-card .app-car .app-tit button{
    width: 100px;
    border: 1px solid orangered
}
.app-card .app-car .app-tit>:first-child{
    font-size: 14px;
    color: #333;
}
.app-card .app-car .app-tit>:nth-child(2){
    font-size: 12px;
}
.app-card .app-car .app-tit>:nth-child(3){
    color: red;
}
.app-card .app-car .app-tit>:last-child{
    color: orangered;
}
.app-card .app-car .app-cou{
    position: absolute;
    right: 20px;
    bottom: 5px;
    color: red;
}
/* 分割块 */
.app-card .app-mas{
    width: 100%;
    height: 10px;
    background: #dddddd
}
/* 推荐商品 */
.app-card .app-rec{
    display: flex;
}
.app-card .app-rec .app-rlist{
    list-style: none;
    padding: 0px;
    display: flex;
    flex-flow: row wrap;
    justify-content: space-around;
}
.app-card .app-rec .app-rlist .app-item{
    display: flex;
    flex-flow: column wrap;
    width: 49%;
    padding: 10px;
    border:1px solid #dddddd
}
.app-card .app-rec .app-rlist .app-item  a img{
    width: 100%;
}
/* 推荐商品 */
.app-card .app-rec .app-rlist .app-item>:last-child{
    width: 40px;
    height: 18px;
}
.app-card .app-rec .app-rlist .app-item>:nth-child(4)>:first-child{
    color: red;
    font-size: 16px;
    margin:10px;
}
.app-card .app-rec .app-rlist .app-item>:nth-child(4)>:last-child{
    text-decoration:line-through 
}
.app-card .app-rec .app-rlist .app-item>:nth-child(2){
    color: #333;
    font-size: 14px;
    margin-top: 10px;
    border-top: 1px solid #dddddd;
}
.app-card .app-rec .app-rlist .app-item>:nth-child(3){
    font-size: 12px;
}
/* 全选按钮 */
.app-card .app-xiaoji{
    display: flex;
    flex-flow: row wrap;
    justify-content: space-between;
    margin: 20px;
    color: #333;
}
.app-card .app-xiaoji span input{
    font-size: 16px;
}
</style>