const mongoose = require('mongoose');
const Personne = require ('./Personne');
const Groupe = require ('./Groupe');

const etudiantSchema = new mongoose.Schema({

    matricule : {
        type : String,
        required : true
    },
    personne : {
        type : new Personne(),
        required : true
    },
    groupe : {
        type : new Groupe(),
        required : true
    }
} , {timestamps : true })

const Etudiant = mongoose.model('Etudiant' , etudiantSchema);

module.exports = Etudiant;