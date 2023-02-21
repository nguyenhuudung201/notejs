
const express=require('express')
const bodyParser=require('body-parser')
const mysql=require('mysql')
const app=express()
const port =process.env.PORT || 5000
app.use(bodyParser.urlencoded({ extended:false}))
app.use(bodyParser.json())
const pool =mysql.createPool({
    connectionLimit:10,
    host :'localhost',
    user :'root',
    password:'',
    database:'aquarium'
})
app.get('',(req,res)=>{
    pool.getConnection((err,connection)=>{
        if(err) throw err
        console.log(`connected as id ${connection.threadId}`)
        connection.query('SELECT*from animal',(err,rows)=>{
            connection.release()
            if(!err){
                res.send(rows)
            }else {
                console.log(err)
            }
        })
    })
})
app.listen(port,()=> console.log(`listen on port ${port}`))