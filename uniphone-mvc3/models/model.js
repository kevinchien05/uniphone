import {Sequelize, DataTypes} from 'sequelize';

const sequelize = new Sequelize("uniphone_db", "root", "", {
    host: 'localhost',
    dialect: 'mysql'
});

export {sequelize, DataTypes};