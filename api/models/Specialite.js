const mongoose = require('mongoose');
const Section = require('./Section');

const spcSchema = new mongoose.Schema({
    nom : {
        type : String,
        required : true
    },
    sections : [{
        type : Section.schema,
        required : true
    }],
} , {timestamps : true })

const Specialite = mongoose.model('Specialite' , spcSchema);

module.exports = Specialite;