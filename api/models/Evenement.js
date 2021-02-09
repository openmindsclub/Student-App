const mongoose = require('mongoose');

const evnmSchema = new mongoose.Schema({
    type : {
        type : String,
        required : true
    },
    date : {
        type : Date,
        required : true
    },
    module : {
        type : String,
        required : true
    }
} , {timestamps : true })

const Evenement = mongoose.model('évènement' , evnmSchema);

module.exports = Evenement;