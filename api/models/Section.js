const mongoose = require('mongoose');
const mongoose = require('./Specialite');

const sctSchema = new mongoose.Schema({
    annee_etude : {
        type : Date,
        required : true
    },
    num_section : {
        type : int,
        required : true
    },
    specialite : {
        type : new Specialite(),
        required : true
    }
} , {timestamps : true })

const Section = mongoose.model('Section' , sctSchema);

module.exports = Section;