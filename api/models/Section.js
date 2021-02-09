const mongoose = require('mongoose');
const Specialite = require('./Specialite');

const sctSchema = new mongoose.Schema({
    annee: {
        type : Date,
        required : true
    },
    num : {
        type : Number,
        required : true
    },
    specialite : {
        type : Specialite.schema,
        required : true
    }
} , {timestamps : true })

const Section = mongoose.model('Section' , sctSchema);

module.exports = Section;