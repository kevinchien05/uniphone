import {sequelize, DataTypes} from './model.js';

const Cart = sequelize.define('cart', {
    id_user : DataTypes.INTEGER,
    product_id : DataTypes.INTEGER,
    photo : DataTypes.STRING,
    name : DataTypes.STRING,
    rom : DataTypes.STRING,
    color : DataTypes.STRING,
    price : DataTypes.INTEGER,
    quantity : DataTypes.INTEGER
});

export default Cart