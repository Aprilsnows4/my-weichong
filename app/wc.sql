#创建 首页 轮播图
CREATE TABLE wc_car (
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255)
);
INSERT INTO wc_car VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/timg5.png");
INSERT INTO wc_car VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/timg6.png");
INSERT INTO wc_car VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/banner@3x.png");
#首页 图片导航
CREATE TABLE wc_var (
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255)
);
INSERT INTO wc_var VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/今日推荐@2x.png");
INSERT INTO wc_var VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/周三见@2x.png");
INSERT INTO wc_var VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/“夜”生活@2x.png");
INSERT INTO wc_var VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/专家问答@2x.png");
#首页 评价
CREATE TABLE wc_eva (
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    img_good VARCHAR(255),
    title VARCHAR(255),
    sit VARCHAR(255),
    visit VARCHAR(255),
    img_slae VARCHAR(255)
);
INSERT INTO wc_eva VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/商铺logo@2x.png","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/造型/评分.png","博爱宠物医院","南环路26号南湖花园门面科讯宠物诊所（滨江公园）","418467人访问过","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/造型/6.2折拷贝@2x.png");
INSERT INTO wc_eva VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/商铺logo@2x.png","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/造型/评分.png","博爱宠物医院","南环路26号南湖花园门面科讯宠物诊所（滨江公园）","418467人访问过","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/造型/6.2折拷贝@2x.png");
INSERT INTO wc_eva VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/商铺logo@2x.png","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/造型/评分.png","博爱宠物医院","南环路26号南湖花园门面科讯宠物诊所（滨江公园）","418467人访问过","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/造型/6.2折拷贝@2x.png");
INSERT INTO wc_eva VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/首页/商铺logo@2x.png","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/造型/评分.png","博爱宠物医院","南环路26号南湖花园门面科讯宠物诊所（滨江公园）","418467人访问过","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/造型/6.2折拷贝@2x.png");

#商城头部
CREATE TABLE wc_store (
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    img_good VARCHAR(255)
);
INSERT INTO wc_store VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/图层-14@2x.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/6bdc2b83649b108202313c905bc544a9@2x.png")

#商城商品列表
CREATE TABLE wc_homeList(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    img_good VARCHAR(255),
    title VARCHAR(255),
    cont VARCHAR(255),
    pri1    INT,
    pri2 INT
);
INSERT INTO wc_homeList VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl1.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/立即进入-拷贝@2x.png","吃汇","零食荟萃，多买多惠","35","55");
INSERT INTO wc_homeList VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl2.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/立即进入-拷贝@2x.png","吃汇","零食荟萃，多买多惠","60","90");
INSERT INTO wc_homeList VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl1.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/立即进入-拷贝@2x.png","吃汇","零食荟萃，多买多惠","99","255");
INSERT INTO wc_homeList VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl4.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/立即进入-拷贝@2x.png","吃汇","零食荟萃，多买多惠","69","129");
INSERT INTO wc_homeList VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl1.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/立即进入-拷贝@2x.png","吃汇","零食荟萃，多买多惠","105","155");
INSERT INTO wc_homeList VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl2.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/立即进入-拷贝@2x.png","吃汇","零食荟萃，多买多惠","85","155");
INSERT INTO wc_homeList VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl1.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/立即进入-拷贝@2x.png","吃汇","零食荟萃，多买多惠","125","255");
INSERT INTO wc_homeList VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl4.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/立即进入-拷贝@2x.png","吃汇","零食荟萃，多买多惠","65","95");



#宠物衣服图片列表
CREATE TABLE wc_clolist(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title  VARCHAR(255),
    cont VARCHAR(255),
    pri1 INT,
    pri2 INT,
    img_good VARCHAR(255)
)
INSERT INTO wc_clolist VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo1.png","新款猫咪衣服、秋冬衣服、可爱萌萌哒","温柔可爱，萌翻全场","30.00~35.00","50.00~75.00","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_clolist VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo2.png","新款猫咪衣服、秋冬衣服、可爱萌萌哒","温柔可爱，萌翻全场","25.00~35.00","60.00~95.00","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_clolist VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo3.png","新款猫咪衣服、秋冬衣服、可爱萌萌哒","温柔可爱，萌翻全场","35.00~80.00","150.00~175.00","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_clolist VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo4.png","新款猫咪衣服、秋冬衣服、可爱萌萌哒","温柔可爱，萌翻全场","130.00~185.00","150.00~275.00","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_clolist VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo5.png","新款猫咪衣服、秋冬衣服、可爱萌萌哒","温柔可爱，萌翻全场","30.00~35.00","50.00~75.00","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_clolist VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo6.png","新款猫咪衣服、秋冬衣服、可爱萌萌哒","温柔可爱，萌翻全场","50.00~99.00","150.00~190.00","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");


#宠物药品
CREATE TABLE wc_yaopin(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title  VARCHAR(255),
    cont VARCHAR(255),
    pri1 INT,
    pri2 INT,
    img_good VARCHAR(255) 
)
INSERT INTO wc_yaopin VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao1.jpg"," 猫藓药狗狗皮肤病药品治疗猫癣真菌感染幼犬幼猫宝满真除虫剂宠物金毛饱螨真猫咪螨虫药品","布尔宝螨真喷剂 猫藓药...","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_yaopin VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao2.jpg"," 狗狗皮肤病药品真菌感染宠物兽药治疗脓皮症猫咪溃疡净猫癣皮炎金毛泰迪药品50ml瓶/盒","布尔宝螨真喷剂 猫藓药...","150","249","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_yaopin VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao3.jpg","狗狗皮肤病药品真菌感染宠物兽药治疗脓皮症猫咪溃疡净猫癣皮炎金毛泰迪药品50ml瓶/盒","布尔宝螨真喷剂 猫藓药...","150","249","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_yaopin VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao4.jpg"," 猫藓药狗狗皮肤病药品治疗猫癣真菌感染幼犬幼猫宝满真除虫剂宠物金毛饱螨真猫咪螨虫药品","布尔宝螨真喷剂 猫藓药...","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_yaopin VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao5.jpg"," 猫藓药狗狗皮肤病药品治疗猫癣真菌感染幼犬幼猫宝满真除虫剂宠物金毛饱螨真猫咪螨虫药品","布尔宝螨真喷剂 猫藓药...","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_yaopin VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao6.jpg"," 狗狗皮肤病药品真菌感染宠物兽药治疗脓皮症猫咪溃疡净猫癣皮炎金毛泰迪药品50ml瓶/盒","布尔宝螨真喷剂 猫藓药...","150","249","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");

#宠物食品
CREATE TABLE wc_food(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title  VARCHAR(255),
    cont VARCHAR(255),
    pri1 INT,
    pri2 INT,
    img_good VARCHAR(255) 
)
INSERT INTO wc_food VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/food1.jpg","布尔宝螨真喷剂 满真除虫剂宠物金毛饱螨真猫咪螨虫药品","布尔宝螨真喷剂 猫藓药...","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_food VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/food2.jpg","溃疡净猫癣皮炎金毛泰迪药品50ml瓶/盒","布尔宝螨真喷剂 猫藓药...","150","249","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_food VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/food3.jpg","布尔宝螨真喷剂 满真除虫剂宠物金毛饱螨真猫咪螨虫药品","布尔宝螨真喷剂 猫藓药...","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_food VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/food4.jpg","溃疡净猫癣皮炎金毛泰迪药品50ml瓶/盒","布尔宝螨真喷剂 猫藓药...","150","249","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_food VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/food5.jpg","布尔宝螨真喷剂 满真除虫剂宠物金毛饱螨真猫咪螨虫药品","布尔宝螨真喷剂 猫藓药...","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_food VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/food6.png","溃疡净猫癣皮炎金毛泰迪药品50ml瓶/盒","布尔宝螨真喷剂 猫藓药...","150","249","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
#宠物玩具
CREATE TABLE wc_game(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title  VARCHAR(255),
    cont VARCHAR(255),
    pri1 INT,
    pri2 INT,
    img_good VARCHAR(255) 
)
INSERT INTO wc_game VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/玩具/wan1.jpg","满199可减50元还有满2件总价可打8折","更多优惠商品请点击","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_game VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/玩具/wan2.jpg","满199可减50元还有满2件总价可打8折","更多优惠商品请点击","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_game VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/玩具/wan3.jpg","满199可减50元还有满2件总价可打8折","更多优惠商品请点击","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_game VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/玩具/wan4.jpg","满199可减50元还有满2件总价可打8折","更多优惠商品请点击","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_game VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/玩具/wan1.jpg","满199可减50元还有满2件总价可打8折","更多优惠商品请点击","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
INSERT INTO wc_game VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/玩具/wan2.jpg","满199可减50元还有满2件总价可打8折","更多优惠商品请点击","180","250","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@3x.png");
----------------------------------------------------------------

#商城商品食物
CREATE TABLE wc_homeFoot(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    img_good VARCHAR(255),
    title VARCHAR(255),
    content VARCHAR(255),
    pri INT,
    cpri INT
);
INSERT INTO wc_homeFoot VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/图层25.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/满99元，包邮.png","波奇网宠物食品伯纳天中型犬成犬...","买即送零食大礼包","499.00","732.00");
INSERT INTO wc_homeFoot VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/图层26.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/满99元，包邮.png","味它宠物e-WEITA 狗粮 成犬 成犬粮 鸡肉","鸡蛋加蛋羹，美味又营养","155.00","195.00");
INSERT INTO wc_homeFoot VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/图层25.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/满99元，包邮.png","波奇网宠物食品伯纳天中型犬成犬...","买即送零食大礼包","499.00","732.00");
INSERT INTO wc_homeFoot VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/图层26.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/食品九宫格列表/满99元，包邮.png","味它宠物e-WEITA 狗粮 成犬 成犬粮 鸡肉","鸡蛋加蛋羹，美味又营养","155.00","195.00");


#商城商品衣服
# 报错 #修改中
CREATE TABLE wc_homeClothes(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    img_good VARCHAR(255),
    title   VARCHAR(255),
    content VARCHAR(255)
)
INSERT INTO wc_homeClothes VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/图层14.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@2x.png","新款猫咪衣服秋冬宠物衣服猫咪...","温柔可爱萌翻全场");
INSERT INTO wc_homeClothes VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/图层15@2x.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵060元@2x.png","新款猫咪衣服秋冬宠物衣服猫咪...","温柔可爱萌翻全场");
INSERT INTO wc_homeClothes VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/图层15@2x.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵0.60元@2x.png","新款猫咪衣服秋冬宠物衣服猫咪...","温柔可爱萌翻全场");
INSERT INTO wc_homeClothes VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/图层14.png","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/宠币可抵0.60元@2x.png","新款猫咪衣服秋冬宠物衣服猫咪...","温柔可爱萌翻全场");

#宠物衣服轮播图
CREATE TABLE wc_clothes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255)
)
INSERT INTO wc_clothes VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/banner.png");
INSERT INTO wc_clothes VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/banner1.png");
INSERT INTO wc_clothes VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/banner2.png");


-----------------------------------------
#商品详情页  推荐
CREATE TABLE wc_detail(
    did INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title VARCHAR(255),
    lic VARCHAR(255),
    pri1 INT,
    pri2 INT,
    pri3 INT,
    sale INT,
    addres VARCHAR(255),
    img_good VARCHAR(255)
)
INSERT INTO wc_detail VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl1.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","49","79","0","417","上海","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/商品详情/dag1.png");
INSERT INTO wc_detail VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/商品详情/图层4@2x.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","159","169","0","417","广州","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/商品详情/图层4@2x.png");
INSERT INTO wc_detail VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl4.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","89","119","0","417","深圳","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/商品详情/dag2.png");
INSERT INTO wc_detail VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl1.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","259","309","0","417","大连","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/商品详情/dag1.png");
INSERT INTO wc_detail VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl1.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","49","79","0","417","北京","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/商品详情/dag1.png");
INSERT INTO wc_detail VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/商品详情/图层4@2x.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","109","169","0","417","深圳","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/商品详情/图层4@2x.png");
INSERT INTO wc_detail VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/商城首页/dogl4.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","159","269","0","417","石家庄","http://127.0.0.1:3000/维宠APP/5维宠切图/首页切图/商品详情/dag2.png");
#商品详情页 宠物衣服
CREATE TABLE wc_clothes_2(
    did INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title VARCHAR(255),
    lic VARCHAR(255),
    pri1 INT,
    pri2 INT,
    pri3 INT,
    sale INT,
    addres VARCHAR(255),
    img_good VARCHAR(255)
)
INSERT INTO wc_clothes_2 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo1.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","49","79","0","217","比利时","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo1.png");
INSERT INTO wc_clothes_2 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo2.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","49","179","0","1417","首尔","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo2.png");
INSERT INTO wc_clothes_2 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo3.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","49","89","0","4117","广州","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo3.png");
INSERT INTO wc_clothes_2 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo4.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","49","79","0","107","北京","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo4.png");
INSERT INTO wc_clothes_2 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo5.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","49","79","0","525","天津","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo5.png");
INSERT INTO wc_clothes_2 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo6.png","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","49","109","10","257","深圳","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/衣服九宫格列表/cclo6.png");
#宠物药品  商品详情页 wc_clothes_3
CREATE TABLE wc_clothes_3(
    did INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title VARCHAR(255),
    lic VARCHAR(255),
    pri1 INT,
    pri2 INT,
    pri3 INT,
    sale INT,
    addres VARCHAR(255),
    img_good VARCHAR(255)
);
INSERT INTO wc_clothes_3 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao1.jpg","布尔宝螨真喷剂,三斤上头，五斤飘柔","口碑之选,缓解泪痕,适口性好","149","279","50","1217","比利时","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao1.jpg");
INSERT INTO wc_clothes_3 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao2.jpg","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","35","49","50","117","比利时","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao2.jpg");
INSERT INTO wc_clothes_3 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao3.jpg","布尔宝螨真喷剂,三斤上头，五斤飘柔","口碑之选,缓解泪痕,适口性好","49","79","0","217","澳大利亚","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao3.jpg");
INSERT INTO wc_clothes_3 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao4.jpg","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","166","279","10","507","俄罗斯","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao4.jpg");
INSERT INTO wc_clothes_3 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao5.jpg","布尔宝螨真喷剂,三斤上头，五斤飘柔","口碑之选,缓解泪痕,适口性好","36","75","0","217","刚果","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao5.jpg");
INSERT INTO wc_clothes_3 VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao6.jpg","疯狂的小狗狗粮,泰迪比熊贵宾博雪纳瑞小型幼犬成犬粮通用型3斤","口碑之选,缓解泪痕,适口性好","39","59","0","17","日本","http://127.0.0.1:3000/维宠APP/5维宠切图/商城切图/药品/yao6.jpg");



#商品评价
CREATE TABLE wc_theroy(
    pid INT
    tid INT PRIMARY  KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    tname VARCHAR(255),
    tcon VARCHAR(255)
)
INSERT INTO wc_theroy VALUES(1,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2拷贝@2x.png","曲文星下凡","我家宝贝喜欢狗，泰迪，博美都特别爱吃，特别好，猫咪特别喜欢吃 狗粮不错，狗狗爱吃，性价可以，值得，看来味道真的是好的不得了。使用后发现狗狗毛色光泽亮丽，精神饱满，大便正常，看起来味道不错... ");
INSERT INTO wc_theroy VALUES(1,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3拷贝2@2x.png","急支糖浆","一袋子快吃完了刚又入手一袋才来评价，真实评价,真的很好，我家多多一个月断奶到我家，开始吃奶糕，长了不少肉肉，泪痕很少，便便成型，身体棒棒哒！?奶糕颗粒大小适中，香香的，每次喂食打开狗粮桶我都想吃? ");
INSERT INTO wc_theroy VALUES(1,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层4@3x.png","铁甲小宝","第一次给狗狗吃皇家，不知道它爱不爱吃。但对皇家这个品牌还是很放心的。趁着活动买的，特别合适，狗狗爱吃的话还会再买。 ");
INSERT INTO wc_theroy VALUES(1,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2拷贝@2x.png","冰与火之歌","我家宝贝喜欢狗，泰迪，博美都特别爱吃，特别好，猫咪特别喜欢吃 狗粮不错，狗狗爱吃，性价可以，值得，看来味道真的是好的不得了。使用后发现狗狗毛色光泽亮丽，精神饱满，大便正常，看起来味道不错... ");
INSERT INTO wc_theroy VALUES(1,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3拷贝2@2x.png","憨豆动感单车","他喜欢吃，泡软了他吃的好快。我自己买的奶粉参的一起喝，好喜欢吃。");
INSERT INTO wc_theroy VALUES(1,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2拷贝@2x.png","曲文星下凡","我家宝贝喜欢狗，泰迪，博美都特别爱吃，特别好，猫咪特别喜欢吃 狗粮不错，狗狗爱吃，性价可以，值得，看来味道真的是好的不得了。使用后发现狗狗毛色光泽亮丽，精神饱满，大便正常，看起来味道不错... ");
INSERT INTO wc_theroy VALUES(2,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3拷贝2@2x.png","我的二郎神","一袋子快吃完了刚又入手一袋才来评价，真实评价,真的很好，我家多多一个月断奶到我家，开始吃奶糕，长了不少肉肉，泪痕很少，便便成型，身体棒棒哒！?奶糕颗粒大小适中，香香的，每次喂食打开狗粮桶我都想吃? ");
INSERT INTO wc_theroy VALUES(2,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层4@3x.png","铁甲小宝","第一次给狗狗吃皇家，不知道它爱不爱吃。但对皇家这个品牌还是很放心的。趁着活动买的，特别合适，狗狗爱吃的话还会再买。 ");
INSERT INTO wc_theroy VALUES(2,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2拷贝@2x.png","我的二郎神","我家宝贝喜欢狗，泰迪，博美都特别爱吃，特别好，猫咪特别喜欢吃 狗粮不错，狗狗爱吃，性价可以，值得，看来味道真的是好的不得了。使用后发现狗狗毛色光泽亮丽，精神饱满，大便正常，看起来味道不错... ");
INSERT INTO wc_theroy VALUES(2,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3拷贝2@2x.png","急支糖浆","他喜欢吃，泡软了他吃的好快。我自己买的奶粉参的一起喝，好喜欢吃。");
INSERT INTO wc_theroy VALUES(3,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层4@3x.png","铁甲小宝","第一次给狗狗吃皇家，不知道它爱不爱吃。但对皇家这个品牌还是很放心的。趁着活动买的，特别合适，狗狗爱吃的话还会再买。 ");
INSERT INTO wc_theroy VALUES(3,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2拷贝@2x.png","冰与火之歌","我家宝贝喜欢狗，泰迪，博美都特别爱吃，特别好，猫咪特别喜欢吃 狗粮不错，狗狗爱吃，性价可以，值得，看来味道真的是好的不得了。使用后发现狗狗毛色光泽亮丽，精神饱满，大便正常，看起来味道不错... ");
INSERT INTO wc_theroy VALUES(3,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3拷贝2@2x.png","憨豆动感单车","他喜欢吃，泡软了他吃的好快。我自己买的奶粉参的一起喝，好喜欢吃。");
INSERT INTO wc_theroy VALUES(3,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层4@3x.png","铁甲小宝","第一次给狗狗吃皇家，不知道它爱不爱吃。但对皇家这个品牌还是很放心的。趁着活动买的，特别合适，狗狗爱吃的话还会再买。 ");
INSERT INTO wc_theroy VALUES(3,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2拷贝@2x.png","急支糖浆","我家宝贝喜欢狗，泰迪，博美都特别爱吃，特别好，猫咪特别喜欢吃 狗粮不错，狗狗爱吃，性价可以，值得，看来味道真的是好的不得了。使用后发现狗狗毛色光泽亮丽，精神饱满，大便正常，看起来味道不错... ");
INSERT INTO wc_theroy VALUES(3,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3拷贝2@2x.png","憨豆动感单车","他喜欢吃，泡软了他吃的好快。我自己买的奶粉参的一起喝，好喜欢吃。");
INSERT INTO wc_theroy VALUES(4,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层4@3x.png","铁甲小宝","第一次给狗狗吃皇家，不知道它爱不爱吃。但对皇家这个品牌还是很放心的。趁着活动买的，特别合适，狗狗爱吃的话还会再买。 ");
INSERT INTO wc_theroy VALUES(4,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2拷贝@2x.png","冰与火之歌","我家宝贝喜欢狗，泰迪，博美都特别爱吃，特别好，猫咪特别喜欢吃 狗粮不错，狗狗爱吃，性价可以，值得，看来味道真的是好的不得了。使用后发现狗狗毛色光泽亮丽，精神饱满，大便正常，看起来味道不错... ");
INSERT INTO wc_theroy VALUES(4,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3拷贝2@2x.png","憨豆动感单车","他喜欢吃，泡软了他吃的好快。我自己买的奶粉参的一起喝，好喜欢吃。");
INSERT INTO wc_theroy VALUES(4,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层4@3x.png","铁甲小宝","第一次给狗狗吃皇家，不知道它爱不爱吃。但对皇家这个品牌还是很放心的。趁着活动买的，特别合适，狗狗爱吃的话还会再买。 ");
INSERT INTO wc_theroy VALUES(5,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2拷贝@2x.png","憨豆动感单车","我家宝贝喜欢狗，泰迪，博美都特别爱吃，特别好，猫咪特别喜欢吃 狗粮不错，狗狗爱吃，性价可以，值得，看来味道真的是好的不得了。使用后发现狗狗毛色光泽亮丽，精神饱满，大便正常，看起来味道不错... ");
INSERT INTO wc_theroy VALUES(5,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3拷贝2@2x.png","阿萨姆","他喜欢吃，泡软了他吃的好快。我自己买的奶粉参的一起喝，好喜欢吃。");
INSERT INTO wc_theroy VALUES(5,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层4@3x.png","铁甲小宝","第一次给狗狗吃皇家，不知道它爱不爱吃。但对皇家这个品牌还是很放心的。趁着活动买的，特别合适，狗狗爱吃的话还会再买。 ");
INSERT INTO wc_theroy VALUES(5,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2拷贝@2x.png","冰与火之歌","我家宝贝喜欢狗，泰迪，博美都特别爱吃，特别好，猫咪特别喜欢吃 狗粮不错，狗狗爱吃，性价可以，值得，看来味道真的是好的不得了。使用后发现狗狗毛色光泽亮丽，精神饱满，大便正常，看起来味道不错... ");
INSERT INTO wc_theroy VALUES(5,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3拷贝2@2x.png","阿萨姆","他喜欢吃，泡软了他吃的好快。我自己买的奶粉参的一起喝，好喜欢吃。");
INSERT INTO wc_theroy VALUES(5,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层4@3x.png","铁甲小宝","第一次给狗狗吃皇家，不知道它爱不爱吃。但对皇家这个品牌还是很放心的。趁着活动买的，特别合适，狗狗爱吃的话还会再买。 ");
INSERT INTO wc_theroy VALUES(5,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层2拷贝@2x.png","我的二郎神","我家宝贝喜欢狗，泰迪，博美都特别爱吃，特别好，猫咪特别喜欢吃 狗粮不错，狗狗爱吃，性价可以，值得，看来味道真的是好的不得了。使用后发现狗狗毛色光泽亮丽，精神饱满，大便正常，看起来味道不错... ");
INSERT INTO wc_theroy VALUES(5,NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3拷贝2@2x.png","憨豆动感单车","他喜欢吃，泡软了他吃的好快。我自己买的奶粉参的一起喝，好喜欢吃。");

#shopCard 购物车数据
CREATE TABLE wc_shopCard(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nid INT,
    title VARCHAR(255),
    cont VARCHAR(255),
    img_url VARCHAR(255),
    pri1 INT,
    count INT,
    uid INT,
);
#登录页面
CREATE TABLE wc_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pho VARCHAR(11),
    upwd  VARCHAR(255),
    uname VARCHAR(255)
);
INSERT INTO wc_login VALUES(null,"18702501639",md5("123456"),"霹雳飞殿侠");
INSERT INTO wc_login VALUES(null,"tom",md5("123"),"飞殿侠");

#首页夜生活
CREATE TABLE wc_nightlife(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    uname VARCHAR(255),
    ages INT,
    sex VARCHAR(255),
    short INT
);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","沐浴阳光",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",50);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","沐浴阳光",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",50);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","圣光洗礼",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",50);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","你是托儿",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",50);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","沐浴阳光",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",50);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","哪吒哪里跑",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",50);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","沐浴阳光",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",50);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","沐浴阳光",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",250);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","七娃",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",50);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","又是充满希望的一天",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",50);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","沐浴阳光",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",10);
INSERT INTO wc_nightlife VALUES(null,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/宠星文详情/图层3@2x.png","沐浴阳光",18,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/夜生活/矩形7@2x.png",150);

#首页宠物洗澡
CREATE TABLE wc_swim(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title VARCHAR(255),
    content VARCHAR(255),
    visit INT,
    href VARCHAR(255)
);
INSERT INTO wc_swim(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/小视频相机/414563@2x.png","阳光沐浴","让爱宠更有活力",52314,"/swim");
INSERT INTO wc_swim(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/个人中心切图/追加评论/图层1@2x.png","汗蒸式","把宠物的毒素通通排出",52314,"/swim");
INSERT INTO wc_swim(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/消息/图层1@2x.png","温馨洗浴","干干净净的去见主人！",5314,"/swim");
INSERT INTO wc_swim(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/小视频相机/414563@2x.png","它乡沐浴","狗狗安心，主人放心！",52314,"/swim");
#首页宠物 寄养
CREATE TABLE wc_park(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title VARCHAR(255),
    content VARCHAR(255),
    visit INT,
    href VARCHAR(255)
);
INSERT INTO wc_park VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/消息/图层1@2x.png","夏日寄养所","让我们把您的它打扮的更美丽！",52314,"/park");
INSERT INTO wc_park VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/个人中心切图/追加评论/图层1@2x.png","木屋寄养所","狗狗安心，主人放心！",52314,"/park");
INSERT INTO wc_park VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/小视频相机/414563@2x.png","潮宠流寄养所","给宠物不一样的家，我们让它变的更潮更萌!",5314,"/park");
INSERT INTO wc_park VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/小视频相机/414563@2x.png","温暖它乡寄养所","更多的给予宠物关爱",52314,"/park");
CREATE TABLE wc_shoot(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title VARCHAR(255),
    content VARCHAR(255),
    visit INT,
    href VARCHAR(255)
);
INSERT INTO wc_shoot VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/消息/图层1@2x.png","摄影","关于摄影的简介",52314,"/shoot");
INSERT INTO wc_shoot VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/消息/图层1@2x.png","摄影","关于摄影的简介！",52314,"/shoot");
INSERT INTO wc_shoot VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/消息/图层1@2x.png","摄影","关于摄影的简介!",5314,"/shoot");
INSERT INTO wc_shoot VALUES(NULL,"http://127.0.0.1:3000/维宠APP/5维宠切图/宠友圈切图/小视频相机/414563@2x.png","摄影","关于摄影的简介",52314,"/shoot");
