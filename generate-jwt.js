import { randomBytes } from "crypto";

const jwtSecret = randomBytes(32).toString("hex");

console.log(`JWT_SECRET_KEY="${jwtSecret}"`);
