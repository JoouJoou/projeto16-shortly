import express from "express";
import cors from "cors";
import router from "./routers/router.js";

const app = express();
app.use(cors());
app.use(express.json());

app.use(router);

app.listen(4000, () => {
  console.log("Listen on 4000");
});
