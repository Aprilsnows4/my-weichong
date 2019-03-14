<template>
    <div class="que">
        <mt-header></mt-header>
        <ul class="app-zixun">
            <li>
                <p>李教授：</p>   
                <span>QQ:353992972</span>
                <span>TEL:18702501639</span>
            </li>
            <br>
            <li>
                <p>杨教授：</p>   
                <span>QQ:353992972</span>
                <span>TEL:18702501639</span>
            </li>  
            <br> 
            <li>
                <p>李助理：</p>   
                <span>QQ:353992972</span>
                <span>TEL:18702501639</span>
            </li>
            <br> 
            <li>
                <p>王助理：</p>   
                <span>QQ:353992972</span>
                <span>TEL:18702501639</span>
            </li>
            <br> 
            <li>
                <p>潘咨询师：</p>   
                <span>QQ:353992972</span>
                <span>TEL:18702501639</span>
            </li>
        </ul>
        <div class="app-you">
            为你服务是我的职责，
                <br>
                <br>
            让你满意是我的追求。
        </div>
    </div>
</template>
<script>
import Header from  "../sub/Header.vue"
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
.que{
    background: #ffffff
}
.que .app-zixun{
    list-style: none;
    padding: 0px;
    margin:20px;
    padding: 20px;
    border-bottom: 1px solid #dddddd
}
.que .app-zixun p{
    font-size: 16px;
    color: #333333;
    border-bottom: 1px solid #dddddd
}
.que .app-zixun span{
    font-size: 14px;
    color: #333333;
    margin:0 20px;
}
.que .app-you{
    text-align: center;
    color: orangered;
    padding: 20px 30px 30px 30px;

}
</style>