import { Router } from "express";
import {
  deleteUrl,
  getUrl,
  redirectUrl,
  shortenUrl,
} from "../controllers/urlsController.js";
import { validateSchema } from "../middlewares/validateSchema.js";
import { validateToken } from "../middlewares/validateToken.js";
import { urlSchema } from "../schemas/urlsSchemas.js";

const urlRouter = Router();

urlRouter.post(
  "/urls/shorten",
  validateToken,
  validateSchema(urlSchema),
  shortenUrl
);

urlRouter.get("/urls/:id", getUrl);

urlRouter.get("/urls/open/:shortUrl", redirectUrl);

urlRouter.delete("/urls/:id", validateToken, deleteUrl);

export default urlRouter;
