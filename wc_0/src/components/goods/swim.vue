<template>
    <div class="app-swim">
        <mt-header></mt-header>
        <div class="mui-card" v-for="item of list">
            <div class="mui-card-header">宠物沐浴</div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <ul class="app-she">
                        <li>
                            <img :src="item.img_url">
                        </li>
                        <li class="app-cou">
                            <p>{{item.title}}</p>
                            <p>{{item.content}}</p>
                        </li>
                        <li class="app-fang">访问：{{item.visit}}</li>
                    </ul>
                </div>
            </div>
        </div>
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
          //宠物洗澡
          swim(){
            var url = "http://127.0.0.1:3000/swim" 
            this.axios.get(url).then(result=>{
            // console.log(result.data);
            this.list = result.data;
            });
        },
    },
    created() {
        this.swim();
    },
    components:{
        "mt-header":Header
    }
}
</script>
<style>
.app-swim .app-pet{
     background: #fff;
     margin: 5px 0;
     text-align: center;
     width: 100%;
     line-height: 40px;
}
.app-swim .app-pet span{
    text-align: center;
    color: #000;
    font-size: 18px;
}
/* 摄影 */
.app-swim .mui-card .app-she{
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
    list-style: none;
    padding: 0;
    text-align: center;
    align-items: center;

}
.app-swim .mui-card .app-she li img{
    width: 40px;
    height: 40px;

}
.app-swim .mui-card .app-she .app-fang{
    margin-top:20px;
}
.app-swim.mui-card .app-she .app-cou{
    display: flex;
    flex-direction: column;
    text-align: left;
}   
.app-swim .mui-card .app-she .app-cou>:first-child{
    font-size: 16px;
    color: #333333;
}
</style>