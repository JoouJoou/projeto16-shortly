import { connection } from "../database/db.js";
import * as userRepository from "../repositories/usersRepository.js";

export async function getUser(req, res) {
  try {
    const { user } = res.locals;
    const { rows: checkUser } = await userRepository.checkUser(user.id);
    if (checkUser.length === 0) {
      return res.sendStatus(404);
    }

    const { rows: userInfo } = await userRepository.getUserInfo(user.id);

    if (userInfo.length === 0) {
      const { rows: secondaryInfo } = await userRepository.getSecondaryInfo(
        user.id
      );
      const userObject = {
        id: secondaryInfo[0].id,
        name: secondaryInfo[0].name,
        visitCount: 0,
        shortenedUrls: [],
      };

      return res.status(200).send(userObject);
    }
    return res.status(200).send(userInfo);
  } catch {
    return res.sendStatus(500);
  }
}

export async function getRanking(req, res) {
  try {
  } catch {
    return res.sendStatus(500);
  }
}
