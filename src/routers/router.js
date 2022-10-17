import express from "express";
import urlRouter from "./urlsRouter.js";

import authRouter from "./authRouter.js";
import usersRouter from "./usersRouter.js";

const router = express.Router();

router.use(authRouter);
router.use(urlRouter);
router.use(usersRouter);

export default router;
