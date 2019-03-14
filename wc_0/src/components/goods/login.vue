<template>
    <div class="app-login">
        <img src="img/登录 拷贝.jpg">
        <ul class="app-shu">
            <li>
                <input type="text" placeholder="请输入11位手机号码" class="tel" v-model="pho" >
            </li>
            <li>
                <input type="password" placeholder="请输入数字英文组合的6~12位字符" class="upwd" v-model="upwd">
            </li>
            <li class="app-wang">
              <router-link  to="/LoginCode"> 维宠注册</router-link>
            </li>
            <li>
                <button @click="butlogin">登录</button>
            </li>
        </ul> 
        <div class="san">
            ————第三方登录————
        </div>
        <ul class="app-deng">
            <li>
                <a href="javascript:;">
                    <img src="img/维宠APP/5维宠切图/个人中心切图/我的宠币/微博@2x.png">
                </a>
            </li>
            <li>
                <a href="javascript:;">
                    <img src="img/维宠APP/5维宠切图/个人中心切图/我的宠币/微信@2x.png">
                </a>
            </li>
            <li>
                <a href="javascript:;">
                    <img src="img/维宠APP/5维宠切图/个人中心切图/我的宠币/矢量智能对象@2x.png">
                </a>
            </li>
        </ul>
    </div>
</template>
<script>
    import {Toast} from "mint-ui"
export default {
    data() {
        return {
           pho:"",
           upwd:""
        }
    },
    methods: {
        butlogin(){
            var t = this.pho;
            var p = this.upwd;  
            if(!t){
                Toast("用户名不能为空")
                return
            }
            if(!p){
                Toast("密码不能为空")
                return
            }
            // console.log(t+":"+p) 
            var reg = /^1[3-8]\d{9}$/;
            if(!reg.test(t)){
                Toast("用户格式不正确，请检查");
                return;
            }
            var url = "http://127.0.0.1:3000/login?pho="+t+"&upwd="+p;
            this.axios.get(url).then(result=>{
                console.log(result);
                 if(result.data.code == 1){
                     this.$router.push("/Home")
                 }else{
                     Toast("用户或者密码错误");
                 }
            }) 
        }
    },
}
</script>
<style>
.app-login{
    background: #ffffff;
}
.app-login img{
    width: 100%;
}
.app-login .app-shu{
    list-style: none;
    display: flex;
    flex-direction: column;
    padding: 0;
    justify-content: center;
}
.app-login .app-shu>li{
    width: 100%;
    text-align: center;

}
.app-login .app-shu>li input{
    width: 300px;
    padding-left: 60px;
    height: 40px; 
    border: none;
    border-bottom: 1px solid #dddddd;
}
.app-login  .app-shu>li .tel{
    background: url("../../../public/img/维宠APP/5维宠切图/个人中心切图/注册成功/手机号-2@2x的副本.png")   no-repeat;
    background-position: 10px center;
    background-size: 15px 25px;
    
}
.app-login .app-shu>li .upwd{
    background: url("../../../public/img/维宠APP/5维宠切图/个人中心切图/注册成功/密码-2@2x的副本.png")   no-repeat;
    background-position: 10px center;
    background-size: 15px 18px;
}
.app-login .app-shu .app-wang{
    display: flex;
    flex-direction: row-reverse;
    padding-right: 40px;
    font-size: 12px;
}
.app-login .app-shu>li button{
    width: 240px;
    margin: 20px 20px 50px 20px;
}
.app-login .san {
    text-align: center;
    font-size: 14px;
    color: #888888  
}
.app-login .app-deng{
    list-style: none;
    padding: 0;
    margin: 0;  
    display: flex;
    flex-flow: row wrap;
    justify-content: space-around;
    margin: 0 50px;
    margin-top: 40px;
    padding-bottom: 15px;
}
.app-login .app-deng li>a img{
    width: 40px;
    height: 40px;
    border: 1px solid #cccccc
    
}
</style>