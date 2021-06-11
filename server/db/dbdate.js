const mysql = require('mysql');

//SQL Connection

const db = mysql.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'datum',
    port: '3306'
})

// Requests
db.dateTables = () => {
    return new Promise((resolve, reject) => {
        db.query('SHOW tables', (err, results) => {
            if(err){
                return reject(err);
            }
            return resolve(results);
        });
    });
};

db.allDates = (table) => {
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

db.addDate = (table, value) => {
    return new Promise((resolve, reject) => {
        db.query(`INSERT INTO ${table} (datum) VALUES (?)`, value, (err, results) => {
            if(err){
                return reject(err);
            }
            return resolve(results);
        })
    })
}

db.addDateTable = (table) => {
    return new Promise((resolve, reject) => {
        db.query(`CREATE TABLE ${table} (datum_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
                                        datum datetime NOT NULL,
                                        text varchar(50) DEFAULT NULL)`, 
            (err, results) => {
            if(err){
                return reject(err);
            }
            return resolve(results);
        })
    })
}


module.exports = db;