const mongoose = require('mongoose');
const Etudiant = require('./Etudiant');

const delegueSchema = new mongoose.Schema({
    field : {
        type : String,
        required : true
    },
    etudiant : {
        type : new Etudiant(),
        required : true
    }
} , {timestamps : true })

const Delegue = mongoose.model('Delegue' , delegueSchema);

module.exports = Delegue;