const express = require('express');
const dbDate = require('../db/dbdate.js');
const dbCalendar = require('../db/dbcalendar.js');
const dbGaming = require('../db/dbgaming.js');
const dbTodos = require('../db/dbtodo.js');
const router = express.Router();

//Alle Tabellen 
router.get('/date/tables', async(req, res, next) => {
    try {
        let results = await dbDate.dateTables();
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }
})

//Alle Daten einer Tabelle
router.get('/date/:table', async (req, res, next) => {
    try {
        let results = await dbDate.allDates(req.params.table);
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }
})

// Neues Datum für eine Tabelle 
router.post('/date/:table/:value', async(req, res, next) => {
    try {
        let results = await dbDate.addDate(req.params.table, req.params.value);
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    } 
})

// Neue Tabelle anlegen
router.post('/date/:table', async(req, res, next) => {
    try {
        let results = await dbDate.addDateTable(req.params.table);
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    } 
})

// router.put for update
// router.delete for delete
// router.post for insert 

// router.get('/date/:id', async (req, res, next) => {
//     try {
//         let results = await db.one(req.params.id);
//         res.json(results);
//     } catch(e){
//         console.log(e);
//         res.sendStatus(500);
//     }
// })

router.get('/calendar/tables', async(req, res, next) => {
    try {
        let results = await dbCalendar.calendarTables();
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }
})

//Alle Daten einer Tabelle
router.get('/calendar/:table', async (req, res, next) => {
    try {
        let calendar = await dbCalendar.allCalendarDates(req.params.table);
        console.log(calendar);
        res.json({calendar});
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }
})

// Neues Datum für eine Tabelle 
router.post('/calendar/:table/add/:date/:title/:text/:verwendung', async(req, res, next) => {
    try {
        // console.log(req.body);
        // console.log(req.query);
        // console.log(req.params);
        let results = await dbCalendar.addDate(req.params.table, req.params.date, req.params.title, req.params.text, req.params.verwendung);
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    } 
})
//update 
router.put('/calendar/:table/update/:id/:title/:text/:verwendung', async(req, res, next) => {
    try {
        // console.log(req.params)
        let results = await dbCalendar.updateDate(req.params.table, req.params.id, req.params.title, req.params.text, req.params.verwendung)
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }
})
//delete
router.delete('/calendar/:table/delete/:id', async (req, res, next) => {
    try {
        let results = await dbCalendar.deleteDate(req.params.table, req.params.id)
        // console.log(results);
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }    
})

// Neue Tabelle anlegen
router.post('/calendar/:table', async(req, res, next) => {
    try {
        let results = await dbCalendar.addCalendarTable(req.params.table);
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    } 
})

router.get('/calendar/verwendung', async(req, res, next) => {
    try {
        let results = await dbCalendar.getVerwendung();
        // console.log(results);
        res.json(results);

    } catch(e){
        console.log(e);
        res.sendStatus(500); 
    }
}),

//////////////////////////////////////////////////////
//Games Konsole
router.get('/gaming/konsole/get', async(req, res, next) => {
    try{
        let results = await dbGaming.getKonsoles()
        res.json(results);
    } catch(e){
        res.sendStatus(500);
    }
})

router.post('/gaming/konsole/add/:name/:bild/:hersteller/:erscheinung/:gen/:status/:typ/:verkauft/:text', async(req, res, next) => {
    try {
        let results = await dbGaming.addKonsole(
            req.params.name, 
            req.params.bild, 
            req.params.hersteller, 
            req.params.erscheinung, 
            req.params.gen, 
            req.params.status, 
            req.params.typ,
            req.params.verkauft,
            req.params.text
            )
            res.json(results);
    } catch(e){
        res.sendStatus(500);
    }
}),

router.put('/gaming/konsole/:id/update/:name/:bild/:hersteller/:erscheinung/:gen/:status/:typ/:verkauft/:text', async(req, res, next) => {
    try {
        let results = await dbGaming.updateKonsole(  
            req.params.id,  
            req.params.name, 
            req.params.bild, 
            req.params.hersteller, 
            req.params.erscheinung, 
            req.params.gen,
            req.params.status, 
            req.params.typ,
            req.params.verkauft,
            req.params.text
        )
    res.json(results);

    } catch(e){
        res.sendStatus(500);
    }
})

// Games

router.get('/gaming/game/get', async(req, res, next) => {
    try{
        let games = await dbGaming.getGame()
        games = JSON.parse(JSON.stringify(games))
        
        for(let i = 0; i < games.length; i++){
            let kongames = await dbGaming.getKonsoleForGame(games[i].Spielid)
            games[i]['konsoles'] = kongames;
        }
        res.json(games);
    } catch(e){
        res.sendStatus(500);
    }
})

router.post('/gaming/game/add/:name/:serie/:genre/:jahr/:entwickler/:dimension/:bild/:status/:size/:verkauft/:text/:konsoles', async(req, res, next) => {
    try {
        let results = await dbGaming.addGame(
            req.params.name, 
            req.params.serie, 
            req.params.genre,
            req.params.jahr, 
            req.params.entwickler, 
            req.params.dimension, 
            req.params.bild, 
            req.params.status,
            req.params.size,
            req.params.verkauft,
            req.params.text,
            req.params.konsoles
            )
            res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }
}),

router.put('/gaming/game/:id/update/:name/:serie/:genre/:jahr/:entwickler/:dimension/:bild/:status/:size/:verkauft/:text/:konsoles', async(req, res, next) => {
    try {
        await dbGaming.deleteKonsoleFromGame(req.params.id);
        
        let results = await dbGaming.updateGame( 
            req.params.id,
            req.params.name, 
            req.params.serie, 
            req.params.genre,
            req.params.jahr, 
            req.params.entwickler, 
            req.params.dimension, 
            req.params.bild, 
            req.params.status,
            req.params.size,
            req.params.verkauft,
            req.params.text,
            req.params.konsoles
            
        )
    res.json(results);

    } catch(e){
        res.sendStatus(500);
    }
})

/////////////////////////////////////////////////
////////////////todos
router.get('/todos/todo/', async(req, res, next) => {
    try{
        let results = await dbTodos.getTodos()
        res.json(results);
    } catch(e){
        res.sendStatus(500);
    }
})

router.get('/todos/verwendung/', async(req, res, next) => {
    try{
        let results = await dbTodos.getVerwendungen()
        res.json(results);
    } catch(e){
        res.sendStatus(500);
    }
})


router.post('/todos/todo/add/:title/:text/:verwendung/:prio/:status/', async(req, res, next) => {
    try {
        let results = await dbTodos.addTodo(
            req.params.title, 
            req.params.text, 
            req.params.verwendung, 
            req.params.prio, 
            req.params.status,
            )
            res.json(results);
    } catch(e){
        console.log(e)
        res.sendStatus(500);
    }
})

router.put('/todos/todo/:id/update/:title/:text/:verwendung/:prio/:status/', async(req, res, next) => {
    try {
        let results = await dbTodos.updateTodo( 
            req.params.id,
            req.params.title, 
            req.params.text, 
            req.params.verwendung,
            req.params.prio, 
            req.params.status, 
        )
    res.json(results);

    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }
})

module.exports = router;