import { Router } from "express";
import { getRanking, getUser } from "../controllers/usersControllers.js";
import { validateToken } from "../middlewares/validateToken.js";

const usersRouter = Router();

usersRouter.get("/users/me", validateToken, getUser);

usersRouter.get("/ranking", getRanking);

export default usersRouter;
