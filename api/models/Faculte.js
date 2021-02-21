const Specialite = require('./Specialite');
const mongoose = require('mongoose');

const fcltSchema = new mongoose.Schema({
    nom : {
        type : String,
        required : true
    },
    specialites : [{
        type : Specialite.schema,
        required : true
    }]
} , {timestamps : true })

const Faculte = mongoose.model('Faculte' , fcltSchema);

module.exports= Faculte;