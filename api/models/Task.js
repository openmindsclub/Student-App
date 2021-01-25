const mongoose = require('mongoose');

const taskSchema = new mongoose.Schema({
    titre : {
        type : String,
        required : true
    },
    describtion : {
        type : String,
        required : true
    },
    date : {
        type : Date,
        required : true
    }
} , {timestamps : true })

const Task = mongoose.model('Task' , taskSchema);

module.exports = Task;