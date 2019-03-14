   <!-- 商城商品首页 -->
<template>
    <div class="app-store">
        <!-- 商城头部 -->
        <div class="app-div">
            <img class="app-image" :src="listFirstImg">
            <p>商城</p>
            <a href="javascript:;"><img class="app-ico" src="img/维宠APP/6维宠控件/图层-25@2x.png"></a>   
        </div>
        <!-- 商城搜素 -->
        <div class="app-blk">
            <div class="app-int">
                <img src="img/维宠APP/6维宠控件/30-搜索@2x.png">
                <input type="text" placeholder="请输入商家名、类别和商圈">
            </div>
            <ul class="app-list">
                <li>
                    <a href="javascript:;">
                        <img src="img/维宠APP/5维宠切图/商城切图/商城首页/图层-8@2x.png">
                    </a>
                    <p>今日团购</p>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="img/维宠APP/5维宠切图/商城切图/商城首页/图层-6@2x.png">
                    </a>
                    <p>现实特价</p>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="img/维宠APP/5维宠切图/商城切图/商城首页/图层-9@2x.png">
                    </a>
                    <p>会员专享</p>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="img/维宠APP/5维宠切图/商城切图/商城首页/图层-10@2x.png">
                    </a>
                    <p>一元抢购</p>
                </li>
            </ul>
        </div>
        <!-- 商城广告 -->
        <div class="app-im">
            <img :src="listLastImg">
        </div>
        <!-- 商城菜单 -->
        <ul class="app-tj">
            <li v-for="(list,index) of menu" >
                <a   href="javascript:;" @click="reds"  :data-i="list.skip" :data-c="list.chuan">{{list.text}}</a>
            </li>
        </ul>
        <!-- 商城商品 -->
        <ul class="app-pic">
                <li class="app-min" v-for="item of hlist" :key="item.id">
                    <a href="javascript:;" >
                        <img :src=item.img_url  @click="pht" :data-id="item.id">
                    </a>
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
        <mt-button type="default" size="large" @click="getMore"  :data-i="list.skip" >加载更多...</mt-button>
    </div>
</template>
<script>
export default{
    data(){
        return{
            list:[],
            listFirstImg: '',
            listLastImg:'',
            hlist:[],
            menu:[
            {"text":"推荐","skip":"imageHomelist","chuan":"imagedetails"},
            {"text":"宠物衣服","skip":"imageclolist","chuan":"imageclolists"},
            {"text":"宠物药品","skip":"yaopin","chuan":"yaopins"},
            {"text":"宠物食物","skip":"food","chuan":"food"},
            {"text":"宠物玩具","skip":"game","chuan":"game"},
            ],
            changeRed:0,
            pon:0,
            pageSize:4,
            li:"",
            lname:"imagedetails"
        }
    },
    methods:{
        pht:function(e){
             var id = e.target.dataset.id
             this.$router.push("/Detail?id="+id+"&lname="+this.lname)
        },
        reds:function(e){
            this.pon = 0;
            this.hlist = [];
            // skip
            var i=e.target.dataset.i;
            var chuan = e.target.dataset.c
            console.log(chuan)
            this.li  = i
            this.lname = chuan
            // console.log(this.li);
            // console.log(i);
            this.pon++;
            var url = "http://127.0.0.1:3000/"+i+"?pon="+this.pon+"&pageSize="+this.pageSize
            // console.log(url)
            this.axios.get(url).then(result=>{
            // console.log(result.data);
            var rows = this.hlist.concat(result.data);
            this.hlist = rows;
            //  console.log(this.hlist)
            })
        },
        getMore(){
            this.pon++;
            var url = "http://127.0.0.1:3000/"+this.li+"?pon="+this.pon+"&pageSize="+this.pageSize
            console.log(url)
            this.axios.get(url).then(result=>{
            // console.log(result.data);
            var rows = this.hlist.concat(result.data);
            this.hlist = rows;
            //  console.log(this.hlist)
            })
            
        },
        imageStore(){
            var url = "http://127.0.0.1:3000/imageStore"
            this.axios.get(url).then(result=>{
                // console.log(result.data);
                this.list=result.data;
                // 判断list 的长度  添加时机问题
                if (this.list.length > 0) {
                    this.listFirstImg = this.list[0].img_url;
                    this.listLastImg = this.list[0].img_good;
                }
            })
        },
    },
    created(){
        this.imageStore();
        if(this.li = "imageHomelist"){
            this.getMore()
        }
       
    }
}
</script>
<style>
    /* 商城头部 */
.app-store  .app-div{
    position: relative;
    width: 100%;
    height: 333px;
}
.app-store  .app-div .app-image{
    width: 100%;
    position: absolute;
}
.app-store  .app-div p{
    position: absolute;
    position: absolute; left: 50%; 
    margin-left: -14px; /* 宽度的一半 */
    top: 10px;
    color: #ffffff;
    font-size: 18px;
}
.app-store  .app-div  a .app-ico{
    width: 30px;
    height: 30px;
    position: absolute;
    top: 5px;
    left: 5px;
}
    /* 商城搜素 */
.app-store .app-blk{
    position: absolute;
    margin: 0 auto;
    background: #ffffff;
    width: 300px;
    border-radius: 10%;
    top: 190px;
    left: 35px;
}
.app-store .app-blk .app-int{
    margin-left: 25px;
    position: relative;
    top: 10px;
}
.app-store .app-blk .app-int img{
    width: 25px;
    height: 25px;
    position: relative;
    top: 5px;
    
}
.app-store .app-blk .app-int input{
    width: 200px;
    height: 25px;
    border-radius: 5%;
    background: #ffffff;
    border: 1px solid #dddddd;
}
input::-webkit-input-placeholder {
     /* placeholder颜色  */
     color: #aab2bd;
     /* placeholder字体大小  */
     font-size: 12px;
     /* placeholder位置  */
    text-align: center;
}
.app-store .app-blk .app-list {
    display: flex;
    list-style: none;
    padding: 0;
    margin-left: -10px;
}
.app-store .app-blk .app-list li a img{
    width: 34px;
    height: 34px;
    padding: 0px;
    margin: 0px;
    margin-left: 31px;

}
.app-store .app-blk .app-list li p{
    display: inline;
    margin-left: 20px;
    font-size: 12px;
    color: #333333;
}

    /* 商城广告 */
.app-store .app-im img{
    width: 100%;
}
    /* 商城菜单 */
.app-store .app-tj{
    display: flex;
    list-style: none;
    padding: 0;
    justify-content: space-around;
    margin: 0;
    margin-top: 5px;
    background: #ffffff;
    width: 100%;
    line-height: 30px;
}
.app-store .app-tj li a{
    font-size: 14px;
    color: #333;
}
    /* 商城商品 */
.app-store  .app-pic{
    display: flex;
    flex-flow: row wrap;
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
    justify-content: space-around;
}
.app-store .app-pic li {
    width: 49%;
    background: #ffffff;
    margin-top: 5px;
}
.app-store .app-pic .app-max{
    height: 233px;
}
.app-store .app-pic .app-pri{
    display: flex;
    flex-flow: row wrap;
    justify-content: space-between;
}
.app-store .app-pic .app-pri p{
    margin: 0 15px;
    
}
.app-store .app-pic .app-pri>:first-child{
    color: red;
    font-size: 16px;
   
}
.app-store .app-pic .app-pri>:last-child{
    text-decoration:line-through;
    
}
.app-store .app-pic li a img{
    width: 100%;
    padding: 15px;
}
.app-store  .app-pic li p img{
    width: 70px;
    height: 20px;
    margin: 0;
}
.app-store  .app-pic li p span{
    font-size: 12px;
    margin-left: 5px;
   
    
}
.app-store  .app-pic li .app-size{
    font-size:16px;
    color: #333;
    margin: 0 10px;
}
.app-store .app-cont{
    margin: 0 10px;
}
</style>