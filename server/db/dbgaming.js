const mysql = require('mysql');

//SQL Connection
const db = mysql.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'gaming',
    port: '3306'
})

db.addKonsole = (name, bild, hersteller, erscheinungsjahr, generation, status, typ, verkauft, text) => {
    if(bild == "null"){
        bild = null;
    }
    if(hersteller == "null"){
        hersteller = null;
    }
    if(erscheinungsjahr == "null"){
        erscheinungsjahr = null;
    }
    if(generation == "null"){
        generation = null;
    }
    if(status == "null"){
        status = null;
    }
    if(typ == "null"){
        typ = null;
    }
    if(verkauft == "null"){
        verkauft = null;
    }
    if(text == "null"){
        text = null;
    }

    return new Promise((resolve, reject) => {
        var sql =`INSERT INTO konsole (konsolename, bild, hersteller, erscheinungsjahr, generation, status, typ, anzahlverkauft, text) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`;
        var values = [name, bild, hersteller, erscheinungsjahr, generation, status, typ, verkauft, text];
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


db.updateKonsole = (id, name, bild, hersteller, erscheinungsjahr, generation, status, typ, verkauft, text) => {
    if(bild == "null"){
        bild = null;
    }
    if(hersteller == "null"){
        hersteller = null;
    }
    if(erscheinungsjahr == "null"){
        erscheinungsjahr = null;
    }
    if(generation == "null"){
        generation = null;
    }
    if(status == "null"){
        status = null;
    }
    if(typ == "null"){
        typ = null;
    }  
    if(verkauft == "null"){
        verkauft = null;
    }
    if(text == "null"){
        text = null;
    }

    return new Promise((resolve, reject) => {
        var sql =`UPDATE konsole
                    SET konsolename = ?, bild = ?, hersteller = ?, erscheinungsjahr = ?, generation = ?, status = ?, typ = ?, anzahlverkauft = ?, text = ?
                    WHERE Konsoleid = ?`;
        var values = [name, bild, hersteller, erscheinungsjahr, generation, status, typ, verkauft, text, id];
        db.query(sql, values, (err, results) => {
            if(err){
    
                return reject(err);
            }
            return resolve(results);
            
        })
    })
}

db.getKonsoles = () => {
    return new Promise((resolve, reject) => {
        var sql =`SELECT * FROM konsole ORDER BY Typ DESC, Erscheinungsjahr DESC`;
        db.query(sql, (err, results) => {
        if(err){
            return reject(err);
        }
        // console.log(results);
        return resolve(results);

        })
    })
}

//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////

db.addGame = (name, serie, genre, jahr, entwickler, dimension, bild, status, size, verkauft, text, konsoles) => {
    if(serie == "null"){
        serie = null;
    }
    if(genre == "null"){
        genre = null;
    }
    if(jahr == "null"){
        jahr = null;
    }
    if(entwickler == "null"){
        entwickler = null;
    }
    if(dimension == "null"){
        dimension = null;
    }
    if(bild == "null"){
        bild = null;
    }
    if(status == "null"){
        status = null;
    } 
    if(size == "null"){
        size = null;
    }
    if(verkauft == "null"){
        verkauft = null;
    }
    if(text == "null"){
        text = null;
    }
    if(konsoles == "null"){
        konsoles = null;
    }

    // console.log("hi")


    return new Promise((resolve, reject) => {
        var sql = `INSERT INTO spiele (spielename, spieleserie, genre, erscheinungsjahr, entwickler, dimension, bild, status, größegb, anzahlverkauft, text) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
        var values = [name, serie, genre, jahr, entwickler, dimension, bild, status, size, verkauft, text];
        db.query(sql, values, (err, results) => {
            if(err){
                // console.log(err);
                return reject(err);
            }
            if(konsoles != null){
                limit = konsoles.split('+').length - 1
                konsoles = konsoles.split('+', limit);

                let idvalues = [];
                for(let i = 0; i < konsoles.length; i++){
                    idvalues.push([results.insertId , parseInt(konsoles[i])])
                } 
                db.query(`INSERT INTO spielekonsole (spielid, konsoleid) VALUES ?`, [idvalues], (err, results) => {
                    if(err){
                        return reject (err);
                    }
                    return resolve(results);
                })
            }
            return resolve(results);
            
        })
    })
}
db.deleteKonsoleFromGame = (id) => {
    return new Promise((resolve, reject) => {
        var sql =`DELETE FROM spielekonsole
                    WHERE spielid = ?`;
        var values = [id];
        db.query(sql, values, (err, results) => {
            if(err){
                // console.log(err);
                return reject(err);
            }
            resolve(results)

        })
    })
}

db.updateGame = (id, name, serie, genre, jahr, entwickler, dimension, bild, status, size, verkauft, text, konsoles) => {
    if(serie == "null"){
        serie = null;
    }
    if(genre == "null") {
        genre = null;
    }
    if(jahr == "null"){
        jahr = null;
    }
    if(entwickler == "null"){
        entwickler = null;
    }
    if(dimension == "null"){
        dimension = null;
    }
    if(bild == "null"){
        bild = null;
    }
    if(status == "null"){
        status = null;
    } 
    if(size == "null"){
        size = null;
    }
    if(verkauft == "null"){
        verkauft = null;
    }
    if(text == "null"){
        text = null;
    }
    if(konsoles == "null"){
        konsoles = null;
    }
    

    return new Promise((resolve, reject) => {
        var sql =`UPDATE spiele
                    SET spielename = ?, spieleserie = ?, genre = ?, erscheinungsjahr = ?, entwickler = ?, dimension = ?, bild = ?, status = ?, größegb = ?, anzahlverkauft = ?, text = ?
                    WHERE spielid = ?`;
        var values = [name, serie, genre, jahr, entwickler, dimension, bild, status, size, verkauft, text, id];
        db.query(sql, values, (err, results) => {
            if(err){
                // console.log(err)
                return reject(err);
            }
            if(konsoles != null){
                limit = konsoles.split('+').length - 1
                konsoles = konsoles.split('+', limit);

                let idvalues = [];
                for(let i = 0; i < konsoles.length; i++){
                    idvalues.push([id , parseInt(konsoles[i])])
                } 
                // console.log(idvalues);
                db.query(`INSERT INTO spielekonsole (spielid, konsoleid) VALUES ?`, [idvalues], (err, results) => {
                    if(err){
                        // console.log(err);
                        return reject (err);
                    }
                    return resolve(results);
                })
            }
            return resolve(results);
            
        })
    })    
    
}
// SELECT * FROM spiele
// SELECT konsoleid FROM spielekonsole WHERE spielid = ?
db.getGame = () => {
    return new Promise((resolve, reject) => {
        // `SELECT * FROM spiele ORDER BY  Spielid DESC`
        // 
        db.query(`SELECT * FROM spiele ORDER BY Erscheinungsjahr`, (err, results) => {
            if(err){
                return reject(err);
            }
            resolve(results);
        })

    })
}

db.getKonsoleForGame = (id) => {
    return new Promise((resolve, reject) => {

            let konsoles = [];
            db.query(`SELECT konsoleid FROM spielekonsole WHERE spielid = ?`, id, (err, res) => {
                if(err){
                    // console.log(err)
                    reject(err)
                }
                res = JSON.parse(JSON.stringify(res));
                
                if(res.length != 0){
                    for(let i = 0; i < res.length; i++){
                        konsoles.push(parseInt(Object.values(res[i])))
                    }
                }
                // console.log(konsoles);
                resolve(konsoles);

            })  
        
        // console.log(games)
    })
}



module.exports = db;