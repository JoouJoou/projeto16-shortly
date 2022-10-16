import express from "express";
import urlRouter from "./urlsRouter.js";

import usersRouter from "./usersRouter.js";

const router = express.Router();

router.use(usersRouter);
router.use(urlRouter);

export default router;
