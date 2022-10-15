import { connection } from "../database/db.js";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import dotenv from "dotenv";

dotenv.config();

export async function postUser(req, res) {
  try {
    const checkUser = await connection.query(
      `SELECT * FROM users WHERE email = $1`,
      [req.body.email]
    );
    if (checkUser.rowCount > 0) {
      return res.sendStatus(409);
    }
    const salt = await bcrypt.genSalt();
    const passwordHash = bcrypt.hashSync(req.body.password, salt);

    await connection.query(
      `INSERT INTO users (name, email, password) VALUES ($1, $2, $3)`,
      [req.body.name, req.body.email, passwordHash]
    );
    return res.sendStatus(201);
  } catch {
    return res.sendStatus(500);
  }
}

export async function postLogin(req, res) {
  try {
    const { rows: checkUser } = await connection.query(
      `SELECT * FROM users WHERE email = $1`,
      [req.body.email]
    );
    if (
      checkUser.length === 0 ||
      !bcrypt.compareSync(req.body.password, checkUser[0].password)
    ) {
      return res.sendStatus(401);
    }
    const token = jwt.sign(req.body, process.env.TOKEN_SECRET, {
      expiresIn: "10d",
    });
    return res.status(200).send(token);
  } catch {
    return res.sendStatus(500);
  }
}
