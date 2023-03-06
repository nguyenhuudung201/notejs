const express = require("express");
const app = express();
const PORT = process.env.PORT || 5000;// 5000->8000

const configDB = {
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'aquarium',
    multipleStatements: true
};
const mysql = require("mysql");
const conn = mysql.createConnection(configDB);

app.listen(PORT,function (){
    console.log("Server is running....");
});

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

app.get("/",function (req,res){
    res.send("Hello world");
})

app.get("/animal",function (req,res){
    var sql = "select animal.*, description.* from animal left join description on animal.id=description.animal_id  ";
    conn.query(sql,function (err,data){
        if(err) res.send(err);
        else res.send(data);
    });
});

app.get("/animal/single",function (req,res){
    var id = req.query.id;
    var sql = `select animal.*, description.* from animal left join description on animal.id=description.animal_id  where animal.id  = ${id}`;
    conn.query(sql,function (err,data){
        if(err) res.send(err);
        else if(data.length > 0)
            res.send(data[0]);
        else res.send("404 not found");
    });
});

app.get("/eventt",function (req,res){
    var sql = " select * from eventt  ";
    conn.query(sql,function (err,data){
        if(err) res.send(err);
        else res.send(data);
    });
});
app.get("/blog",function (req,res){
    var sql = " select * from blog ";
    conn.query(sql,function (err,data){
        if(err) res.send(err);
        else res.send(data);
    });
});
app.get("/single/post",function (req,res){
    var sql = " select * from single_post ";
    conn.query(sql,function (err,data){
        if(err) res.send(err);
        else res.send(data);
    });
});
app.get("/event/single",function (req,res){
    var id = req.query.id;
    var sql = ` select * from eventt where id  = ${id}`;
    conn.query(sql,function (err,data){
        if(err) res.send(err);
        else if(data.length > 0)
            res.send(data[0]);
        else res.send("404 not found");
    });
});
app.get("/blog/single",function (req,res){
    var id = req.query.id;
    var sql = ` select * from blog  where id  = ${id}`;
    conn.query(sql,function (err,data){
        if(err) res.send(err);
        else if(data.length > 0)
            res.send(data[0]);
        else res.send("404 not found");
    });
});
app.get("/animal/search",function (req,res){
    var name = req.query.name;
    var sql = `select * from animal where name like '%${name}%'`;
    conn.query(sql,function (err,data){
        if(err) res.send(err);
        else res.send(data);
    });
});