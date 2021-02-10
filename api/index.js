const express = require('express');
const mongoose = require("mongoose");
const app = express();
const bodyParser = require('body-parser');
const personneRouter = require('./routes/personne');
const etudiantRouter = require('./routes/etudiant');
const authRouter = require('./routes/auth');

//middleware
app.use(bodyParser.json());

//connecting to the database
mongoose.connect('mongodb://localhost/Student-app', {
    useNewUrlParser: true,
    useUnifiedTopology: true
});

const PORT = 3000;

//routes
app.use(authRouter);
app.use(personneRouter);
app.use(etudiantRouter);
app.listen(PORT, () => {
    console.log(`server running on port ${PORT}`);
});