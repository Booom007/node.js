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

             res.render('index');
});
app.get("/mymusic", function(req, res) {
    imageUtil.querymymusic(function (data) {

        res.render('mymusic',{
            musicData:data});
    });

});
app.get("/myalbum", function(req, res) {
    imageUtil.querymyalbum(function (data) {

        res.render('myalbum',{
            musicData:data});
    });

});
app.get("/deletemyalbum", function(req, res) {
    var id=req.query.dataid;
    imageUtil.deletemyalbum(id);
    res.redirect('myalbum');


});
app.get("/deletemymusic", function(req, res) {
      var id=req.query.dataid;
      imageUtil.deletemymusic(id);
        res.redirect('mymusic');


});
app.get("/music", function(req, res) {

    imageUtil.querymusic(function (data) {

        res.render('music',{
            musicData:data});
    });
});
app.get("/addmusic", function(req, res) {
  var id=req.query.dataid;

    imageUtil.querymusicid(function (data) {

       imageUtil.insertmymusic(data[0].math,data[0].image,data[0].imageurl,data[0].name,data[0].nameurl,data[0].singer,data[0].singerurl,data[0].times);
    },id);

    res.redirect('music');

});
app.get("/musiclist", function(req, res) {

    res.render('musiclist');
});
app.get("/Album", function(req, res) {

    imageUtil.queryalbum(function (data) {

            res.render('Album',{
                musicData:data});
        });

});
app.get("/buyalbum", function(req, res) {
    var id=req.query.dataid;

    imageUtil.queryalbumid(function (data) {

        imageUtil.insertmyalbum(data[0].name,data[0].singer,data[0].prices,data[0].url);
    },id);

        res.redirect('Album');

});

var server = app.listen(8022, function() {
    console.log("请在浏览器访问：http://localhost:8022/index");
});