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
            database: 'imgmessage'          //数据库里面的数据
        });
        connection.connect();

    }

    this.queryhotoffers = function (call) {
        //2,连接

        var sql = "select* from hotoffers";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }

    this.querypopular = function (call) {
        //2,连接

        var sql = "select * from popular";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.queryhousehold = function (call) {
        //2,连接

        var sql = "select * from household";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.queryvegetables = function (call) {
        //2,连接

        var sql = "select * from vegetables";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.querybeverages = function (call) {
        //2,连接

        var sql = "select* from beverages";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
       //5,连接结束

    }
    this.querybread = function (call) {
        //2,连接

        var sql = "select* from bread";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.queryfrozen = function (call) {
        //2,连接

        var sql = "select* from frozen";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.querypet = function (call) {
        //2,连接

        var sql = "select* from pet";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }
    this.queryUsers = function (call) {
        //2,连接

        var sql = "select* from users";
        connection.query(sql, function (err, result) {
            if (err) {
                console.log('[INSERT ERROR] - ', err.message);
                return;
            }
            call(result);
        });
        //5,连接结束

    }

}

module.exports = ImageUtil;