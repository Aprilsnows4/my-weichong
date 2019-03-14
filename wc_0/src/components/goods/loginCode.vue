<template>
    <div  class="app-code">
        <img src="img/登录 拷贝.jpg">
        <ul class="app-shu">
            <li>
                <input type="text" placeholder="请输入11位手机号码" class="name" v-model="pho" @blur="phos">
            </li>
            <li>
                <input type="password" placeholder="请设置数字英文组合的6~12位字符" class="pwd" v-model="upwd">
            </li>
            <li>
                <input type="text" placeholder="请输入昵称" class="uname" v-model="uname">
            </li>
            <!-- <li>
                <input type="text" placeholder="请输入手机验证码" class="name">
            </li> -->
            <li class="app-wang">
                <input type="checkbox"  @click="phon" checked>
                    我已经阅读并遵循法律协议声明
            </li>
            <li>
                <button @click = "res" :disabled="disable">注册</button>
            </li>
        </ul>

    </div>
</template>
<script>
import {Toast} from "mint-ui"
export default{
    data() {
        return {
          pho:"",
          upwd:"",
          uname:"", 
          disable:false,
          list:""
        }
    },
    methods: {
        res(){
            var u = this.upwd;
            var name = this.uname;
            var p = this.pho;
            if(!u){
                Toast("密码不能为空")
                return;
            }
            if(!name){
                Toast("昵称不能为空")
                return;
            }
            var url = "http://127.0.0.1:3000/register?pho="+p+"&upwd="+u+"&name="+name;
            this.axios.get(url).then(result=>{
                Toast("用户名为："+name+"  恭喜注册成功!")
            })  
            this.phos();
        },
        // 用户注册判定
        phos(){
            var p = this.pho;
            if(!p){
                Toast("用户名不能为空")
                return;
            }
            var reg = /^1[3-8]\d{9}$/;
            if(!reg.test(p)){
                Toast("用户格式不正确，请检查");
                return;
            }
            console.log(p)
            var url ="http://127.0.0.1:3000/checkpho?pho="+p
            this.axios.get(url).then(result=>{
                this.list = result.data.code;
                console.log(this.list)
               if(result.data.code == -1){
                Toast(result.data.msg)
                this.disable = true;
                   return;
               }else if(result.data.code == 1){
                   Toast(result.data.msg)
                   this.disable = false;
               }
            })
        },
        // 按钮判定
        phon:function(e){
            if(!e.target.checked){
                this.disable = true;
                return;
            }else{
                this.disable = false;

            }
        },
    }
}
</script>
<style>
.app-code{
    background: #ffffff;
}
.app-code img{
    width: 100%;
}
.app-code .app-shu{
    list-style: none;
    display: flex;
    flex-direction: column;
    padding: 0;
    justify-content: center;
}
.app-code .app-shu>li{
    width: 100%;
    text-align: center;

}
.app-code .app-shu>li input{
    width: 300px;
    padding-left: 60px;
    height: 40px; 
    border: none;
    border-bottom: 1px solid #dddddd;
}
.app-code .app-shu>li .name{
    background: url("../../../public/img/维宠APP/5维宠切图/个人中心切图/注册成功/手机号-2@2x的副本.png")   no-repeat;
    background-position: 10px center;
    background-size: 15px 25px;

    
}
.app-code .app-shu li .pwd{
    background: url("../../../public/img/维宠APP/5维宠切图/个人中心切图/注册成功/密码-2@2x的副本.png")   no-repeat;
    background-position: 10px center;
    background-size: 15px 18px;
}
.app-code .app-shu li .uname{
    background: url("../../../public/img/维宠APP/5维宠切图/个人中心切图/维宠小助手/矢量智能对象@2x.png")   no-repeat;
    background-position: 10px center;
    background-size: 15px 18px;
}
.app-code .app-shu .app-wang{
    display: flex;
    flex-direction: row-reverse;
    font-size: 12px;
    position: relative;
}
.app-code .app-shu>li button{
    
    width: 240px;
    margin: 80px 20px 80px 20px;
}
.app-code .san {
    text-align: center;
    font-size: 14px;
    color: #888888  
}
.app-code .app-shu .app-wang{  
    display: flex;
    flex-flow: row wrap;
    justify-content: center;
    font-size: 14px;
    margin-top: 20px;
}
.app-code .app-shu .app-wang input {
    width: 15px;
    height: 15px;
    margin:3px;
}
</style>