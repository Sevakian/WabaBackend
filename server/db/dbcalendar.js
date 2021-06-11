const mysql = require('mysql');

//SQL Connection

const db = mysql.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'calendar',
    port: '3306'
})

// Requests
db.calendarTables = () => {
    return new Promise((resolve, reject) => {
        db.query('SHOW tables where tables_in_calendar not like "verwendung"', (err, results) => {
            if(err){
                return reject(err);
            }
            return resolve(results);
        });
    });
};

db.allCalendarDates = (table) => {
    return new Promise((resolve, reject) => {
        db.query(`SELECT * FROM ${table}`, (err, results) => {
            if(err){
                return reject(err);
            }
        
            return resolve(results);
        });
    });
};

db.one = (id) => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM vdatum WHERE datum_id = ?', id ,(err, results) => {
            if(err){
                return reject(err);
            }
            return resolve(results[0]);
        });
    });
}

//add

db.addDate = (table, date, title, text, verwendung) => {
    if(title == "null"){
        title = null;
    }
    if(text == "null"){
        text = null;
    }
    if(verwendung == "null"){
        verwendung = null;
    }
    
    return new Promise((resolve, reject) => {
        var sql =`INSERT INTO ${table} (datum, title, text, verwendung_id) VALUES (?, ?, ?, ?)`;
        var values = [date, title, text, verwendung];
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

db.deleteDate = (table, id) => {
    return new Promise((resolve, reject) => {
        var sql =`DELETE FROM ${table} 
                    WHERE datum_id = ?`;
        var values = [id];
        db.query(sql, values, (err, results) => {
            if(err){
                return reject(err);
            }
            // console.log(results);
            return resolve(results);
            
        })
    })    
}

db.updateDate = (table, id, title, text, verwendung) => {
    if(title == "null"){
        title = null;
    }
    if(text == "null"){
        text = null;
    }
    if(verwendung == "null"){
        verwendung = null;
    }   
    return new Promise((resolve, reject) => {
        var sql =`UPDATE ${table} 
                    SET title = ?, text = ?, verwendung_id = ? 
                    WHERE datum_id = ?`;
        var values = [title, text, verwendung, id];
        db.query(sql, values, (err, results) => {
            if(err){
                return reject(err);
            }
            // console.log(results);
            return resolve(results);
            
        })
    })
}

// db.addDate = (table, date, title, text, verwendung) => {
//     return new Promise((resolve, reject) => {
//         db.query(`INSERT INTO ${table} (datum, title, text, verwendung) VALUES ('${date}', '${title}', '${text}', ${verwendung})`, (err, results) => {
//             if(err){
//                 return reject(err);
//             }
//             console.log(results);
//             return resolve(results);
            
//         })
//     })
// }

db.addCalendarTable = (table) => {
    return new Promise((resolve, reject) => {
        db.query(`CREATE TABLE ${table} (
            datum_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
            datum datetime NOT NULL,
            title Varchar(30) DEFAULT NULL,
            text Varchar(300) DEFAULT NULL,
            verwendung_id int(10), FOREIGN KEY(verwendung_id) REFERENCES verwendung(verwendung_id)
          )`, 
            (err, results) => {
            if(err){
                return reject(err);
            }
            return resolve(results);
        })
    })
}


db.getVerwendung = () => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM verwendung', (err, results) => {
            if(err){
                return reject(err);
            }
            return resolve(results);
        })
    })
}


module.exports = db;