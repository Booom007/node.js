/**
 * Created by boy on 2017/7/10.
 */
var express = require("express");
var app = express();
var bodyParser = require('body-parser');
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
        imageUtil.queryhotoffers(function (data) {

             res.render('index',{
                imageData:data});
        });
});
app.get("/about", function(req, res) {
    res.render('about');
});

app.get("/bread", function(req, res) {
    imageUtil.querybread(function (data) {
        res.render('bread',{
            imageData:data});
    });
});
app.get("/drinks", function(req, res) {
    imageUtil.querybeverages(function (data) {
        res.render('drinks',{
            imageData:data});
    });
});
app.get("/events", function(req, res) {
    res.render('events');
});
app.get("/faqs", function(req, res) {
    res.render('faqs');
});
app.get("/frozen", function(req, res) {
    imageUtil.queryfrozen(function (data) {
        res.render('frozen',{
            imageData:data});
    });
});
app.get("/household", function(req, res) {
    imageUtil.queryhousehold(function (data) {

        res.render('household',{
            imageData:data});
    });
});

app.get("/kitchen", function(req, res) {
    res.render('kitchen');
});
app.get("/login", function(req, res) {

    res.render('login');
});
app.post("/login",function (req,res,next) {

var check=0;

    imageUtil.queryUsers(function (data) {
        for(var i=0;i<data.length;i++) {
            if (req.body.Username == data[i].username) {
                console.log('账号一样');
                    if(req.body.Password==data[i].password){
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

            res.redirect('index');
        }else{

            res.redirect('login');
        }

    });

});
app.get("/mail", function(req, res) {
    res.render('mail');
});
app.get("/pet", function(req, res) {
    imageUtil.querypet(function (data) {
        res.render('pet',{
            imageData:data});
    });
});
app.get("/privacy", function(req, res) {
    res.render('privacy');
});
app.get("/products", function(req, res) {
    imageUtil.querypopular(function (data) {

        res.render('products',{
            imageData:data});
    });

});
app.get("/services", function(req, res) {
    res.render('services');
});
app.get("/short-codes", function(req, res) {
    res.render('short-codes');
});
app.get("/single", function(req, res) {
    res.render('single');
});
app.get("/vegetables", function(req, res) {
    imageUtil.queryvegetables(function (data) {
        console.log(data);
        res.render('vegetables',{
            imageData:data});
    });
});

var server = app.listen(8022, function() {
    console.log("请在浏览器访问：http://localhost:8022/login");
});