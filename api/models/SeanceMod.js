const mongoose = require('mongoose');
const Seance = require('./Seance');

const scmodifSchema = new mongoose.Schema({
    seance : {
        type : Seance.schema,
        required : true
    }
},{timestamps : true } )

const SeanceMod = mongoose.model('SeanceMod' , scmodifSchema);

module.exports = SeanceMod;