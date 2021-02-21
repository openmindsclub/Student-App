const mongoose = require('mongoose');
const Etudiant = require ('./Etudiant');

const grpSchema = new mongoose.Schema({
    num_groupe : {
        type : Number,
        required : true
    },
    etudiants : [{
            type : Etudiant.schema,
            required : true
    }]
} , {timestamps : true })

const Groupe = mongoose.model('Groupe' , grpSchema);

module.exports = Groupe;