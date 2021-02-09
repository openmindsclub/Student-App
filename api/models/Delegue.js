const mongoose = require('mongoose');
const Etudiant = require('./Etudiant');

const delegueSchema = new mongoose.Schema({
    etudiant : {
        type : Etudiant.schema ,
        required : true
    }
} , {timestamps : true })

const Delegue = mongoose.model('Delegue' , delegueSchema);

module.exports = Delegue;