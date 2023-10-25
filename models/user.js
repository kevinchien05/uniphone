import {sequelize, DataTypes} from "./model.js";

const User = sequelize.define('user', {
    username: DataTypes.STRING,
    user_email: DataTypes.STRING,
    password: DataTypes.STRING
});

export default User;