const mysql = require('mysql');

//SQL Connection

const db = mysql.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'todo',
    port: '3306'
})

db.getTodos = () => {
    return new Promise((resolve, reject) => {
        var sql =`SELECT * FROM todo WHERE status="erledigen"`;
        db.query(sql, (err, results) => {
        if(err){
            return reject(err);
        }
        // console.log(results);
        return resolve(results);

        })
    })
}

db.getVerwendungen = () => {
    return new Promise((resolve, reject) => {
        var sql =`SELECT * FROM verwendung`;
        db.query(sql, (err, results) => {
        if(err){
            return reject(err);
        }
        // console.log(results);
        return resolve(results);

        })
    })
}

db.addTodo = (title, text, verwendung, prio, status) => {
    if(text == "null"){
        text = null;
    }
    if(verwendung == "null"){
        verwendung = null;
    }
    if(prio == "null"){
        prio = null;
    }
    if(status == "null"){
        status = null;
    }

    return new Promise((resolve, reject) => {
        var sql =`INSERT INTO todo (title, text, verwendung_id, priorität, status) VALUES (?, ?, ?, ?, ?)`;
        var values = [title, text, verwendung, prio, status];
        db.query(sql, values, (err, results) => {
            if(err){
                return reject(err);
            }
            // console.log(results);
            // console.log(results.insertId);
            return resolve(results.insertId);        
        })
    })
}


db.updateTodo = (id, title, text, verwendung, prio, status) => {
    if(title == "null"){
        title = null;
    }
    if(text == "null"){
        text = null;
    }
    if(verwendung == "null"){
        verwendung = null;
    }
    if(prio == "null"){
        prio = null;
    }
    if(status == "null"){
        status = null;
    }

    return new Promise((resolve, reject) => {
        var sql =`UPDATE todo
                    SET title = ?, text = ?, verwendung_id = ?, priorität = ?, status = ?
                    WHERE todo_id = ?`;
        var values = [title, text, verwendung, prio, status, id];
        db.query(sql, values, (err, results) => {
            if(err){
                // console.log(err);
                return reject(err);
            }
            return resolve(results);
            
        })
    })
}
module.exports = db;