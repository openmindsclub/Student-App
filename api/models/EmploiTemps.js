const mongoose = require('mongoose');
const Seance = require('./Seance');

const emplSchema = new mongoose.Schema({
    field : {
        type : String,
        required : true
    },
    seances : [{
        type : Seance.schema,
        required : true
    }]
} , {timestamps : true })

const Emploi = mongoose.model('EmploiTemps' , emplSchema);

module.exports = Emploi;