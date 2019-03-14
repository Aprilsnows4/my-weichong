//1:加载模块 express pool.js
const express = require("express");
const pool = require("./pool");
//2:创建服务器端对象
var app = express();
//3:监听 3000
app.listen(3000);
//4:指定静态目录  public 
app.use(express.static("public"));
//5:加载跨域访问模块
const cors = require("cors");
//6:配置跨域访问模块 那个域名跨域访问允许
//  脚手架8080允许
//origin      允许跨域访问域名列表
//credentials 跨域访问保存session id
app.use(cors({
    origin:["http://127.0.0.1:8080",
    "http://localhost:8080"],
    credentials:true
  }));
//6.1:下载 express-session 并且配置
const session = require("express-session");
app.use(session({
  secret:"128位随机字符", //安全字符串
  resave:false,          //每次请求是否都更新数据
  saveUninitialized:true, //初始化时保存数据
  cookie:{
    maxAge:1000 * 60 * 60 * 8
  }
}));
  //7 加载第三方模块body-parser
  //body-parser针对post请求处理请求参数
  //如果配置成功 req.body..
  const bodyParser = require("body-parser");
  //8 配置对特殊json是否是自动转换 不转换
  app.use(bodyParser.urlencoded({extended:false}))
  //功能一:home 组件轮播图片  
app.get("/imageList",(req,res)=>{
//1:将轮播图中所需图片 复制public/img
//2:查询
 var sql = "SELECT img_url FROM wc_car"
 pool.query(sql,(err,result)=>{
     if(err) throw err;
    res.send(result)
 })
});
// 图片导航
app.get("/imageNav",(req,res)=>{
    var sql = "SELECT img_url FROM wc_var";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
});
//附近医院
app.get("/imageEva",(req,res)=>{
    var pon = req.query.pon;
    var pageSize = req.query.pageSize;
    if(!pon){
        pon = 1
    }
    if(!pageSize){
        pageSize = 4
    }
    var sql = "SELECT id,img_url,img_good,sit,visit,img_slae FROM wc_eva LIMIT ?,?"
    var ps = parseInt(pageSize);
    var offset = (pon-1)*pageSize;
    pool.query(sql,[offset,ps],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
});
// 商城列表 推荐分页查询
 app.get("/imageHomelist",(req,res)=>{
     // 参数  pon pageSize
    var pon = req.query.pon;
    var pageSize = req.query.pageSize;
     if(!pon){
         pon = 1
    }
         if(!pageSize){
         pageSize = 4
     }
     var sql ="SELECT * FROM wc_homeList LIMIT ?,?"
     var ps = parseInt(pageSize);
     var pffset = (pon-1)*pageSize;
     pool.query(sql,[pffset,ps],(err,result)=>{
         if(err) throw err;
         res.send(result);
     })
 });

//商品详情 推荐
app.get("/imagedetails",(req,res)=>{
    // 获取商品参数
    var did = req.query.did
    var sql = "SELECT * FROM wc_detail WHERE  did = ?  "
    pool.query(sql,[did],(err,result)=>{
        if(err) throw err;
        res.send(result);    
    })
});
// 商城商品头部
app.get("/imageStore",(req,res)=>{
    var sql = "SELECT id,img_url,img_good FROM wc_store"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
// 商城宠物衣服轮播图
app.get("/imageclothes",(req,res)=>{
    var sql = "SELECT img_url FROM wc_clothes";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
});
// 商城宠物衣服列表
app.get("/imageclolist",(req,res)=>{
    var pon = req.query.pon;
    var pageSize = req.query.pageSize;
    if(!pon){
        pon = 1
    }
    if(!pageSize){
        pageSize = 4
    }
    var ps = parseInt(pageSize);
    var offset = (pon-1)*pageSize
    var sql = "SELECT id,img_url,title,cont,pri1,pri2,img_good FROM wc_clolist LIMIT ?,?"
    pool.query(sql,[offset,ps],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 商品详情 衣服 wc_clothes_2 
app.get("/imageclolists",(req,res)=>{
    var did = req.query.did
    var sql = "SELECT * FROM wc_clothes_2 WHERE  did = ?"
    pool.query(sql,[did],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//  商品宠物药品
app.get("/yaopin",(req,res)=>{
    var pon = req.query.pon;
    var pageSize = req.query.pageSize;
    if(!pon){
        pon = 1
    }
    if(!pageSize){
        pageSize = 4
    }
    var ps = parseInt(pageSize);
    var offset = (pon-1)*pageSize
    var sql = "SELECT id,img_url,title,cont,pri1,pri2,img_good FROM wc_yaopin LIMIT ?,?"
    pool.query(sql,[offset,ps],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 商品宠物药品  wc_clothes_3
app.get("/yaopins",(req,res)=>{
    var did = req.query.did
    var sql = "SELECT * FROM wc_clothes_3 WHERE  did = ?"
    pool.query(sql,[did],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
//商品宠物食物
app.get("/food",(req,res)=>{
    var pon = req.query.pon;
    var pageSize = req.query.pageSize;
    if(!pon){
        pon = 1
    }
    if(!pageSize){
        pageSize = 4
    }
    var ps = parseInt(pageSize);
    var offset = (pon-1)*pageSize
    var sql = "SELECT id,img_url,title,cont,pri1,pri2,img_good FROM wc_food LIMIT ?,?"
    pool.query(sql,[offset,ps],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
//商品宠物玩具
app.get("/game",(req,res)=>{
    var pon = req.query.pon;
    var pageSize = req.query.pageSize;
    if(!pon){
        pon = 1
    }
    if(!pageSize){
        pageSize = 4
    }
    var ps = parseInt(pageSize);
    var offset = (pon-1)*pageSize
    var sql = "SELECT id,img_url,title,cont,pri1,pri2,img_good FROM wc_game LIMIT ?,?"
    pool.query(sql,[offset,ps],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 商品详情评论
app.get("/imagetheroy",(req,res)=>{
    var pid =req.query.pid;
    var pon = req.query.pon;
    var pageSize = req.query.pageSize;
    if(!pon){
        pon = 1
    }
    if(!pageSize){
        pageSize = 2
    }
    var ps = parseInt(pageSize);
    var offset = (pon-1)*pageSize
    var sql = "SELECT pid,tid,img_url,tname,tcon FROM wc_theroy WHERE pid = ? LIMIT ?,?"
    pool.query(sql,[pid,offset,ps],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
  // 添加登录用户
app.get("/login",(req,res)=>{

    var pho = req.query.pho ; 
    var upwd = req.query.upwd;
    var sql = "SELECT id FROM wc_login WHERE pho = ? AND upwd = md5(?)";
    pool.query(sql,[pho,upwd],(err,result)=>{
        // console.log(result)    
        if(err) throw err;
        if(result.length==0){
            res.send({code:-1,msg:"用户名或者密码错误"});
        }else{
                var id = result[0].id;   
    
                req.session.uid = id;
            res.send({code:1,msg:"登录成功"})
        }
});
})

// 将商品添加到购物车
app.get("/shopcard",(req,res)=>{
    // var 传输的商品信息 给购物车后台添加数据使用
    if(!req.session.uid){
        res.send({code:-1,msg:"请登录"});
        return;
    }
    // 用户id
    var uid = req.session.uid;
    // 商品的id
    var nid = parseInt(req.query.nid);
    // 商品价格
    var pri1 = parseInt(req.query.price);
    var title = req.query.title;
    var cont = req.query.cont;
    var img_url = req.query.img_url;
    var count = req.query.count;
    // var price = parseInt(req.query.price);
    var sql = "SELECT * FROM wc_shopcard WHERE nid = ? AND uid = ? "
    pool.query(sql,[uid,nid],(err,result)=>{
        if(err)throw err;
        if(result.length == 0){
            var sql = `INSERT INTO wc_shopcard VALUES(null,${nid},"${title}","${cont}","${img_url}",${pri1},${count},${uid})`
        }else{
            var sql = `UPDATE wc_shopcard  SET count=count+1 WHERE nid = ${nid} AND uid = ${uid}`
        }
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            if(result.affectedRows>0){
                res.send("添加成功")
            }else{
                res.send("添加失败")
            }
            })
        })
});
// 获取购物车
app.get("/shoplist",(req,res)=>{
    var uid = req.session.uid
    console.log(uid)
    if(!uid){
        res.send({code:-1,msg:"请登录"})
        return
    }
    var sql = "SELECT id,nid,title,cont,img_url,pri1,count FROM wc_shopcard  WHERE uid = ?"
    pool.query(sql,[uid],(err,result)=>{
        res.send(result); 
        
    })
})
// 删除购物车列表
app.get("/del",(req,res)=>{
    var id = req.query.id
    var sql = "DELETE FROM wc_shopcard WHERE id = ?"
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows > 0){
            res.send("删除成功")
        }else{
            res.send("删除失败")
        }
    })
});
// 注册 插入用户信息
app.get("/register",(req,res)=>{
     var pho = req.query.pho;
     var upwd = req.query.upwd;
     var name = req.query.name;
    var sql = `INSERT INTO wc_login VALUES(NULL,"${pho}",md5("${upwd}"),"${name}")`
pool.query(sql,[pho,upwd,name],(err,result)=>{
    if(err) throw err;
    res.send(result);

    })
})

app.get("/checkpho",(req,res)=>{
    var pho = req.query.pho;
    var sql = "SELECT id FROM wc_login WHERE pho = ? "
    pool.query(sql,[pho],(err,result)=>{
        if(err) throw err;
        if(result.length == 0){
            res.send({code:1,msg:"用户名未占用"})
        }else{
            res.send({code:-1,msg:"用户名已占用"})
        }
    })
}),
// 退出登录
app.get("/personal",(req,res)=>{
    req.session.uid = null
    res.send({code:1,msg:"用户已退出登录"})
})

// 首页 夜生活
app.get("/nightlife",(req,res)=>{
    var sql = "SELECT * FROM wc_nightlife"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
//宠物洗澡
app.get("/swim",(req,res)=>{
    var sql = "SELECT * FROM wc_swim"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
app.get("/park",(req,res)=>{
    var sql = "SELECT * FROM wc_park"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
app.get("/shoot",(req,res)=>{
    var sql = "SELECT * FROM wc_shoot"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})