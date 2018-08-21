/**
 * Created by boy on 2017/7/10.
 */
var express = require("express");
var app = express();
var multer  = require('multer');
var bodyParser = require('body-parser');
var session = require('express-session');
var cookieParser= require('cookie-parser');
app.use(cookieParser('这段签名的字符串可以是随意的'));
app.use(session({
    secret: 'keyboard cat',
    resave: false,
    saveUninitialized: true
}));
var User = require('./been/User');
//设置静态文件
app.use(express.static('public'));
//指定模板引擎
app.set("views engine", 'ejs');
//指定模板位置
app.set('views', __dirname + '/views');
//1,接受表单的请求
app.use(bodyParser.urlencoded({extended: false}));
var ImageUtil = require('./dao/ImageUtil');
imageUtil = new ImageUtil();
imageUtil.init();

//利用模板文件home.ejs渲染为html
app.get("/index", function(req, res) {
    if(req.session.login){
        imageUtil.queryhotoffers(function (data) {

            res.render('index',{
                imageData:data});
        });
    }else{
        res.render('page-login');
    }

});

app.get("/vegetables", function(req, res) {
    if(req.session.login){
    imageUtil.queryvegetables(function (data) {

        res.render('vegetables',{
            imageData:data});
    });}
    else{
        res.render('page-login');
    }
});

app.get("/chart-flot", function(req, res) {
    if(req.session.login){
    res.render('chart-flot');
    }
    else{
        res.render('page-login');
    }
});
app.get("/chart-other", function(req, res) {
    if(req.session.login){
        res.render('chart-other');
    }
    else{
        res.render('page-login');
    }

});
app.get("/chart-xchart", function(req, res) {
    if(req.session.login){
        res.render('chart-xchart');
    }
    else{
        res.render('page-login');
    }

});



app.get("/gallery", function(req, res) {
    if(req.session.login){
        res.render('gallery');
    }
    else{
        res.render('page-login');
    }

});

app.get("/page-404", function(req, res) {
    if(req.session.login){
        res.render('page-404');
    }
    else{
        res.render('page-login');
    }

});
app.get("/page-500", function(req, res) {
    if(req.session.login){
        res.render('page-500');
    }
    else{
        res.render('page-login');
    }

});





app.get("/page-lockscreen", function(req, res) {
    if(req.session.login){
        res.render('page-lockscreen');
    }
    else{
        res.render('page-login');
    }

});
app.get("/page-lockscreen2", function(req, res) {
    if(req.session.login){
        res.render('page-lockscreen2');
    }
    else{
        res.render('page-login');
    }

});
app.get("/page-login", function(req, res) {

    res.render('page-login');
});

app.get("/page-profile", function(req, res) {
    if(req.session.login){
        res.render('page-profile');
    }
    else{
        res.render('page-login');
    }

});
app.get("/page-register", function(req, res) {
    if(req.session.login){
        res.render('page-register');
    }
    else{
        res.render('page-login');
    }

});
app.get("/table", function(req, res) {
    if(req.session.login){
        res.render('table');
    }
    else{
        res.render('page-login');
    }

});



app.get("/widgets", function(req, res) {
    if(req.session.login){
        res.render('widgets');
    }
    else{
        res.render('page-login');
    }

});

app.post("/page-login",function (req,res,next) {
    var check=0;
    imageUtil.queryManager(function (data) {
        for(var i=0;i<data.length;i++) {
            if (req.body.username == data[i].username) {
                console.log('账号一样');
                if(req.body.password==data[i].password){
                    console.log('密码一样');
                    check=1;
                    // res.redirect('index');
                    break;
                }
                else{
                    console.log('密码不一样');

                    // alert('密码不一样');
                    check=2;
                    // res.redirect('login');
                    break;
                }


            }else{
                check=0;
                console.log('账号不一样');
            }

        }

        if(check==1){
            req.session.login=true;
            res.redirect('index');
        }else{

            res.redirect('page-login');
        }

    });

});
app.post("/vegetables",function (req,res,next) {

   var nowprice=req.body.nowprice;
   var preprice=req.body.preprice;
   var id=req.body.ids;
   var user=new User(id,nowprice,preprice);
    console.log(JSON.stringify(user));
    imageUtil.updatavegetables(user);
    res.redirect('vegetables');
});

app.post("/search",function (req,res,next) {

   var search=req.body.searchs;
   console.log(search);
    imageUtil.searchvegetables(function (data) {

        res.render('vegetables',{
            imageData:data});
    },search);

});
app.get("/deletes",function (req,res) {
    var id=req.query.dataid;
    imageUtil.deletevegetables(id);

    res.redirect('vegetables');

});
app.use(multer({ dest: '/public/'}).array('image'));
app.post("/add",function (req,res) {

    var nowprice=req.body.nowprice;
    var preprice=req.body.preprice;
    var types=req.body.types;
    var adds=req.files[0].originalname;
    console.log(adds);
    console.log(nowprice);
    console.log(preprice);
    console.log(types);
    imageUtil.insertvegetables(adds,nowprice,preprice,types);
    res.redirect('vegetables');
});
// app.get("/logout",function (req,res) {
//     req.session.destroy();
//     res.redirect('page-login');
//
// });
var server = app.listen(8188, function() {
    console.log("请在浏览器访问：http://localhost:8188/page-login");
});