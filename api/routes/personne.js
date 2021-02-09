const { Router } = require("express");
const { index, add, del,update } = require("../controllers/personneController");


let personneRouter = Router();

personneRouter.get('/personnes/index', index);
personneRouter.post('/personne/add', add);
personneRouter.delete('/personne/:id/delete', del);
personneRouter.put('/personne/:id/update', update);

module.exports = personneRouter;