import express from "express";

import routerTemplate from "./templateRouter.js";

const router = express.Router();

router.use(routerTemplate);

export default router;
