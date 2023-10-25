import { Sequelize, DataTypes } from 'sequelize';
import "dotenv/config";

let HOST = process.env.MYSQL_HOST || "localhost";
let USER = process.env.MYSQL_USER || "root";
let PASSWORD = process.env.MYSQL_PASSWORD || "password";
let DATABASE = process.env.MYSQL_DATABASE || "uniphone_db"

const sequelize = new Sequelize(DATABASE, USER, PASSWORD, {
    host: HOST,
    dialect: "mysql",
    port: 3306,
});

export { sequelize, DataTypes };