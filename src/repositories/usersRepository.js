import { connection } from "../database/db.js";

export async function getUserInfo(id) {
  return connection.query(
    `SELECT users.id, users.name, SUM(links."visitsCount") AS "visitsCount", json_agg(json_build_object(
 	 'id', links.id,
	 'shortUrl', links."shortUrl",
	 'url', links.url,
	 'visitsCount', links."visitsCount"
    )) AS "shortenedUrls"
    FROM users JOIN links ON users.id = links."userId"
    WHERE users.id = $1
    GROUP BY users.id`,
    [id]
  );
}

export async function getSecondaryInfo(id) {
  return connection.query(`SELECT id, name FROM users WHERE id = $1`, [id]);
}

export async function checkUser(id) {
  return connection.query(`SELECT * FROM users WHERE id = $1`, [id]);
}

export async function getRanking() {
  return connection.query(`SELECT users.id, users.name, COUNT(links.id) AS "linksCount", SUM(links."visitsCount") AS "visitCount"
FROM users JOIN links ON users.id = links."userId"
GROUP BY users.id
ORDER BY "visitCount" DESC
LIMIT 10`);
}
