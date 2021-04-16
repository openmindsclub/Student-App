const mongoose = require('mongoose');
const Personne = require ('./Personne');
const Groupe = require ('./Groupe');
const Task = require('./Task');

const etudiantSchema = new mongoose.Schema({

    matricule : {
        type : String,
        required : true
    },
    personne : {
        type : Personne.schema,
        required : true
    },
    groupe : {
        type : Groupe.schema,
        required : true
    },
    tasks : [{
        type : Task.schema,
        required : true
    }],
} , {timestamps : true })

const Etudiant = mongoose.model('Etudiant' , etudiantSchema);

module.exports = Etudiant;