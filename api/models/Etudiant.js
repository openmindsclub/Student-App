const mongoose = require('mongoose');
const Personne = require ('./Personne');

const etudiantSchema = new mongoose.Schema({

    matricule : {
        type : String,
        required : true,
        unique : true
    },
    personne : {
        type : Personne.schema,
        required : true
    }
} , {timestamps : true })

const Etudiant = mongoose.model('Etudiant' , etudiantSchema);

module.exports = Etudiant;