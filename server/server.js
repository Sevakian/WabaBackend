const express = require('express');
const cors = require('cors');
const apiRouter = require('./routes');
const bodyParser = require('body-parser');

const app = express();

app.use(cors());
app.use('/api', apiRouter);
app.use(
    bodyParser.urlencoded({ 
        extended: true,
    })
)
app.use(bodyParser.json());

app.listen(process.env.PORT || 5000, () => {
    console.log(`Server started on port ${process.env.PORT || 5000}`);
})





