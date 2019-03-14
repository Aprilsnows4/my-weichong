<template>
    <div class="app-mould">
        <mt-header></mt-header>
        <div class="mui-card">
            <div class="mui-card-header">宠物造型</div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <ul class="app-she">
                        <li>
                            <img src="img/维宠APP/5维宠切图/宠友圈切图/小视频相机/414563@2x.png">
                        </li>
                        <li class="app-cou">
                            <p>造型</p>
                            <p>关于等离子烫</p>
                        </li>
                        <li class="app-fang">访问：52314</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <ul class="app-she">
                        <li>
                            <img src="img/维宠APP/5维宠切图/个人中心切图/追加评论/图层1@2x.png">
                        </li>
                        <li class="app-cou">
                            <p>造型</p>
                            <p>关于大波浪卷</p>
                        </li>
                        <li class="app-fang">访问：52314</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <ul class="app-she">
                        <li>
                            <img src="img/维宠APP/5维宠切图/宠友圈切图/消息/图层1@2x.png">
                        </li>
                        <li class="app-cou">
                            <p>造型</p>
                            <p>关于洗剪吹</p>
                        </li>
                        <li class="app-fang">访问：52314</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <ul class="app-she">
                        <li>
                            <img src="img/维宠APP/5维宠切图/个人中心切图/追加评论/图层1@2x.png" >
                        </li>
                        <li class="app-cou">
                            <p>造型</p>
                            <p>关于烫染烧</p>
                        </li>
                        <li class="app-fang">访问：52314</li>
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
            
        }
    },
    components:{
        "mt-header":Header
    }
}
</script>
<style>
.app-mould .app-pet{
     background: #fff;
     margin: 5px 0;
     text-align: center;
     width: 100%;
     line-height: 40px;
}
.app-mould .app-pet span{
    text-align: center;
    color: #000;
    font-size: 18px;
}
/* 摄影 */
.app-mould .mui-card .app-she{
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
    list-style: none;
    padding: 0;
    text-align: center;
    align-items: center;

}
.app-mould .mui-card .app-she li img{
    width: 40px;
    height: 40px;

}
.app-mould .mui-card .app-she .app-fang{
    margin-top:20px;
}
.app-mould .mui-card .app-she .app-cou{
    display: flex;
    flex-direction: column;
    text-align: left;
}   
.app-mould .mui-card .app-she .app-cou>:first-child{
    font-size: 16px;
    color: #333333;
}

</style>