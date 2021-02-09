const mongoose = require('mongoose');
const Section = require('./Section');

const emplSchema = new mongoose.Schema({
    field : {
        type : String,
        required : true
    },
    section : {
        type : Section.schema,
        required : true
    }
} , {timestamps : true })

const Emploi = mongoose.model('EmploiTemps' , emplSchema);

module.exports = Emploi;