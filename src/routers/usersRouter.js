import { Router } from "express";
import { getUser } from "../controllers/usersControllers.js";
import { validateToken } from "../middlewares/validateToken.js";

const usersRouter = Router();

usersRouter.get("/users/me", validateToken, getUser);

export default usersRouter;
