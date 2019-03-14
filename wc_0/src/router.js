import Vue from 'vue'
import Router from 'vue-router'
import Home from "./components/tabbar/Home.vue";
import Shop from "./components/home/Shop.vue";
import Detail from "./components/home/Detail.vue";
import Center from "./components/home/Center.vue";
import Friends from "./components/home/Friends.vue";
import Clothes from "./components/home/Clothes.vue";
import ShopCard from "./components/home/ShopCard.vue" ;
import Personal from "./components/home/Personal.vue";
import Login from "./components/goods/login.vue";
import LoginCode from "./components/goods/loginCode.vue";
import Nightlife from "./components/goods/nightlife.vue";
import Threeday from "./components/goods/threeday.vue";
import Today from "./components/goods/Today.vue";
import Question from "./components/goods/question.vue";
import Shoot from "./components/goods/shoot.vue";
import Mould from "./components/goods/mould.vue";
import Park from "./components/goods/park.vue";
import Swim from "./components/goods/swim.vue";

Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',redirect:"/Home"},
    {path:'/Home',component:Home},
    {path:'/Shop',component:Shop},
    {path:'/Detail',component:Detail},
    {path:'/Center',component:Center},
    {path:'/Friends',component:Friends},
    {path:'/Clothes',component:Clothes},
    {path:'/ShopCard',component:ShopCard},
    {path:'/Personal',component:Personal},
    {path:'/Login',component:Login},
    {path:'/LoginCode',component:LoginCode},
    {path:'/Nightlife',component:Nightlife},
    {path:'/Threeday',component:Threeday},
    {path:'/Today',component:Today},
    {path:'/Question',component:Question},
    {path:'/Shoot',component:Shoot},
    {path:'/Mould',component:Mould},
    {path:'/park',component:Park},
    {path:'/Swim',component:Swim},
    // {path:'/NewsInfo',component:NewsInfo},
  ]
})
