const { Router } = require("express");
const { authentificate, register } = require("../controllers/authController");

let authRouter = Router();

authRouter.get('/register', register);
authRouter.post('/login', authentificate);

module.exports = authRouter;