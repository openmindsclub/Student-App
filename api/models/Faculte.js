const mongoose = require('mongoose');

const fcltSchema = new mongoose.Schema({
    nom : {
        type : String,
        required : true
    }
} , {timestamps : true })

const Faculte = mongoose.model('Faculte' , fcltSchema);

module.exports= Faculte;