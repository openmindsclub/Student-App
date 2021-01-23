const mongoose = require('mongoose');
const Groupe = require('./groupe');

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

const Etudiant = mongoose.model('etudiant' , etudiantSchema);

module.exports = Etudiant;