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
    this.queryhousehold = function (call,search) {
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
    this.queryManager = function (call) {
        //2,连接

        var sql = "select* from manager";
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
    this.updatavegetables=function (user) {
        //4,编写sql语句
        var userModSql = 'UPDATE vegetables SET nowprice = ?,preprice = ? WHERE Id = ?';

        var userModSql_Params = [user.getNowprice(), user.getPreprice(),user.getId()];

        //5，更新操作
        connection.query(userModSql,userModSql_Params,function (err, result) {
            if(err){
                console.log('[INSERT ERROR] - ',err.message);
                return;
            }
        });
    }
    this.deletevegetables=function (id) {
        //4,编写sql语句
        var userModSql = 'DELETE FROM vegetables where id = ?';

        var userModSql_Params = [id];

        //5，更新操作
        connection.query(userModSql,userModSql_Params,function (err, result) {
            if(err){
                console.log('[INSERT ERROR] - ',err.message);
                return;
            }
        });
    }
    this.insertvegetables=function (adds,nowprice,preprice,types) {
        //4,编写sql语句

        var userModSql = 'INSERT INTO vegetables(adds,nowprice,preprice,types) VALUES(?,?,?,?)';

        var userModSql_Params = [adds,nowprice,preprice,types];

        //5，更新操作
        connection.query(userModSql,userModSql_Params,function (err, result) {
            if(err){
                console.log('[INSERT ERROR] - ',err.message);
                return;
            }
        });
    }
    this.searchvegetables = function (call,search) {
        //2,连接

        var sql = "select * from vegetables where nowprice = ? or preprice = ? or types like ?";
        var sqlvalues=[search,search,'%'+search+'%'];
        connection.query(sql,sqlvalues, function (err, result) {
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