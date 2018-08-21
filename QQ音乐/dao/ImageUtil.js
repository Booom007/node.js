function ImageUtil() {
    var connection;
    this.init = function () {
        var mysql = require('mysql');  //调用MySQL模块

        //1，创建一个connection
        connection = mysql.createConnection({
            host: 'localhost',       //主机 ip
            user: 'root',            //MySQL认证用户名
            password: 'root',                //MySQL认证用户密码
            port: '3306',                 //端口号
            database: 'qqmusic'          //数据库里面的数据
        });
        connection.connect();

    }

    this.queryalbum = function (call) {
        //2,连接

        var sql = "select * from album";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.queryalbumid = function (call,musicid) {
        //2,连接

        var sql = "select * from album where id= ?";
        var sqlid=[musicid];
        connection.query(sql,sqlid, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }

    this.insertmyalbum = function (name,singer,prices,url) {
        //2,连接
        var sql = 'INSERT INTO myalbum(name,singer,prices,url) VALUES(?,?,?,?)';

        var sqlid=[name,singer,prices,url];
        connection.query(sql,sqlid, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }

        });
        //5,连接结束

    }
    this.querymyalbum = function (call) {
        //2,连接

        var sql = "select * from myalbum ";

        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.deletemyalbum = function (id) {
        //2,连接
        var sql = 'DELETE FROM myalbum where id = ?';
        var sqlid=[id];

        connection.query(sql,sqlid, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }

        });
        //5,连接结束

    }

    this.querymusic = function (call) {
        //2,连接

        var sql = "select * from music";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.querymusicid = function (call,musicid) {
        //2,连接

        var sql = "select * from music where id=?";
        var sqlid=[musicid];
        connection.query(sql,sqlid, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.insertmymusic = function (math,image,imageurl,name,nameurl,singer,singerurl,times) {
        //2,连接
        var sql = 'INSERT INTO mymusic(math,image,imageurl,name,nameurl,singer,singerurl,times) VALUES(?,?,?,?,?,?,?,?)';

        var sqlid=[math,image,imageurl,name,nameurl,singer,singerurl,times];
        connection.query(sql,sqlid, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }

        });
        //5,连接结束

    }
    this.querymymusic = function (call) {
        //2,连接

        var sql = "select * from mymusic ";

        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.deletemymusic = function (id) {
        //2,连接
        var sql = 'DELETE FROM mymusic where id = ?';
       var sqlid=[id];

        connection.query(sql,sqlid, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }

        });
        //5,连接结束

    }

}

module.exports = ImageUtil;