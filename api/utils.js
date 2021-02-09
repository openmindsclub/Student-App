module.exports.handleServerError = function(err,response){
    console.log(err);
    response.status(500).json("server error");
}