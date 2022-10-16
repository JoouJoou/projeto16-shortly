import { connection } from "../database/db.js";
import { nanoid } from "nanoid";

export async function shortenUrl(req, res) {
  try {
    const shorturl = nanoid(8);
    const { user } = res.locals;
    const visits = 0;
    await connection.query(
      `INSERT INTO links (url, "shortUrl", "userId", "visitsCount") VALUES ($1, $2, $3, $4)`,
      [req.body.url, shorturl, user.id, visits]
    );
    return res.status(201).send({ shortUrl: shorturl });
  } catch (err) {
    console.log(err);
    return res.sendStatus(500);
  }
}

export async function getUrl(req, res) {
  try {
    const { id } = req.params;
    const { rows: link } = await connection.query(
      `SELECT id, "shortUrl", url FROM links WHERE id = $1`,
      [id]
    );
    if (link.length === 0) {
      return res.sendStatus(404);
    }
    return res.status(200).send(link);
  } catch {
    return res.sendStatus(500);
  }
}

export async function redirectUrl(req, res) {
  try {
    const { shortUrl } = req.params;
    const { rows: link } = await connection.query(
      `SELECT * FROM links WHERE "shortUrl" = $1`,
      [shortUrl]
    );
    if (link.length === 0) {
      return res.sendStatus(404);
    }
    const views = link[0].visitsCount + 1;
    await connection.query(
      `UPDATE links SET "visitsCount"=$1 WHERE "shortUrl"=$2`,
      [views, shortUrl]
    );
    return res.redirect(link[0].url);
  } catch (err) {
    console.log(err);
    return res.sendStatus(500);
  }
}

export async function deleteUrl(req, res) {
  try {
    const { id } = req.params;
    const { user } = res.locals;
    const { rows: link } = await connection.query(
      `SELECT * FROM links WHERE id = $1`,
      [id]
    );
    if (link.length === 0) {
      return res.sendStatus(404);
    } else if (link[0].userId !== user.id) {
      return res.sendStatus(401);
    }
    await connection.query(`DELETE FROM links WHERE id = $1`, [id]);
    return res.sendStatus(204);
  } catch {
    return res.sendStatus(500);
  }
}
