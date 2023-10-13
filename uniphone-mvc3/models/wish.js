import {sequelize, DataTypes} from './model.js';

const Wish = sequelize.define('wish', {
    id_user : DataTypes.INTEGER,
    product_id : DataTypes.INTEGER,
    photo : DataTypes.STRING,
    name : DataTypes.STRING,
    rom : DataTypes.STRING,
    color : DataTypes.STRING,
    price : DataTypes.INTEGER
});

export default Wish