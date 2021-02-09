const { Router } = require("express");
const { index, add, del,update } = require("../controllers/personneController");
const { verifyToken } = require("../utils");


let personneRouter = Router();

personneRouter.get('/personnes/index',[verifyToken], index);
personneRouter.post('/personne/add',[verifyToken], add);
personneRouter.delete('/personne/:id/delete',[verifyToken], del);
personneRouter.put('/personne/:id/update',[verifyToken], update);

module.exports = personneRouter;