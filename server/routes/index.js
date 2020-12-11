const express = require('express');
const db = require('../db/index.js')
const router = express.Router();

//Alle Tabellen 
router.get('/date/tables', async(req, res, next) => {
    try {
        let results = await db.dateTables();
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }
})

//Alle Daten einer Tabelle
router.get('/date/:table', async (req, res, next) => {
    try {
        let results = await db.allDates(req.params.table);
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    }
})

// Neues Datum für eine Tabelle 
router.post('/date/:table/:value', async(req, res, next) => {
    try {
        let results = await db.addDate(req.params.table, req.params.value);
        res.json(results);
    } catch(e){
        console.log(e);
        res.sendStatus(500);
    } 
})

// Neue Tabelle anlegen
router.post('/date/:table', async(req, res, next) => {
    try {
        let results = await db.addDateTable(req.params.table);
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

module.exports = router;