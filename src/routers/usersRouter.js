import { Router } from "express";
import { loginSchema, registerSchema } from "../schemas/usersSchemas.js";
import { validateSchema } from "../middlewares/validateSchema.js";
import { postLogin, postUser } from "../controllers/usersController.js";

const usersRouter = Router();

usersRouter.post("/signup", validateSchema(registerSchema), postUser);

usersRouter.post("/signin", validateSchema(loginSchema), postLogin);

export default usersRouter;
