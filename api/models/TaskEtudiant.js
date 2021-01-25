const mongoose = require('mongoose');
const Task = require('./Task');
const Etudiant = require('./Etudiant');

const schema = new mongoose.Schema({

    etudiant : {
        type : new Etudiant(),
        required : true
    },
    task : {
        type : new Task(),
        required : true
    }
} , {timestamps : true })

const TastEtudiant = mongoose.model('TastEtudiant' , schema);

module.exports = TastEtudiant;