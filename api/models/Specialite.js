const mongoose = require('mongoose');
const Faculte = require('./Faculte');

const spcSchema = new mongoose.Schema({
    nom : {
        type : String,
        required : true
    },
    faculte : {
        type : Faculte.schema,
        required : true
    }
} , {timestamps : true })

const Specialite = mongoose.model('Specialite' , spcSchema);

module.exports = Specialite;