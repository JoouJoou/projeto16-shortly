import { connection } from "../database/db.js";

export async function getUser(req, res) {
  try {
    const { user } = res.locals;
    const { rows: checkUser } = await connection.query(
      `SELECT * FROM users WHERE id = $1`,
      [user.id]
    );
    if (checkUser.length === 0) {
      return res.sendStatus(404);
    }
    const { rows: userInfo } = await connection.query(
      `SELECT users.id, users.name, SUM(links."visitsCount") AS "visitsCount", json_agg(json_build_object(
 	 'id', links.id,
	 'shortUrl', links."shortUrl",
	 'url', links.url,
	 'visitsCount', links."visitsCount"
    )) AS "shortenedUrls"
    FROM users JOIN links ON users.id = links."userId"
    WHERE users.id = $1
    GROUP BY users.id`,
      [user.id]
    );
    res.status(200).send(userInfo);
  } catch {
    return res.sendStatus(500);
  }
}
