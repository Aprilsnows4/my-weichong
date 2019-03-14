<template>
    <div class="app-header">
        <ul class="app-ul">
            <li>
                <a href="javascript:;" class="app-td">
                    <img :src="list[0].img_url" >
                </a>
            </li>
            <li>
              <!-- <input type="text" placeholder="请输入商家名、类别或商圈"> -->  
                <span class="app-title">{{list[0].title}}</span>
            </li>
            <li class="app-Tr">
                <span>{{list[0].site}}</span>
                <img :src="list[0].img_urlo" >
            </li>
        </ul>
    </div>
</template>
<script>
export default{
    data(){
        return{
            list:[
                {id:0,img_url:"img/维宠APP/5维宠切图/宠友圈切图/论坛/矩形7@2x.png",
                    title:"维宠之家",site:"北京",img_urlo:"img/维宠APP/6维宠控件/地址筛选@3x.png"}
            ]
        }
    },
    watch:{
        "$route.path":function(newval){
            if(newval==="/Shop"){
                this.list[0].title="疯狂的小狗狗粮"
                this.list[0].site=""
                this.list[0].img_urlo="img/维宠APP/5维宠切图/商城切图/衣服九宫格、列表/图层6@2x.png"
            }else if(newval==="/Home"){
                this.list[0].title="维宠之家"
                this.list[0].site="北京"
                this.list[0].img_urlo="img/维宠APP/6维宠控件/地址筛选@3x.png"
            }
        }
    }
}
</script>
<style>
.app-header .app-ul{
    list-style: none;
    display: flex;
    flex-flow: row wrap;
    justify-content: space-around;
    line-height: 40px;
    background: rgb(165, 215, 240);
    margin: 0;
    padding: 0;
}
.app-header .app-ul li .app-td img{
    margin: 0;
    width: 25px;
    height: 25px;
    margin-top: 8vpx;
}
/*.app-header .app-ul li input{
    margin: 0;
    border: none;
    height: 30px;;
}*/
.app-header .app-ul .app-title {
    color: #fff;
    font-size: 18px;
}
.app-header .app-ul .app-Tr img{
    position: relative;
    width: 20px;
    height: 20px;
    top: 5px;
}
.app-header .app-ul .app-Tr span{
    color: #fff;
}
</style>