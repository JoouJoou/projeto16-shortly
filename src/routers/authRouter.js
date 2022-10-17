import { Router } from "express";
import { loginSchema, registerSchema } from "../schemas/authSchemas.js";
import { validateSchema } from "../middlewares/validateSchema.js";
import { postLogin, postUser } from "../controllers/authController.js";

const authRouter = Router();

authRouter.post("/signup", validateSchema(registerSchema), postUser);

authRouter.post("/signin", validateSchema(loginSchema), postLogin);

export default authRouter;
