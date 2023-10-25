import {sequelize, DataTypes} from './model.js';

const Payment = sequelize.define('payment', {
    id_user : DataTypes.INTEGER,
    product_id : DataTypes.INTEGER,
    cart_id : DataTypes.INTEGER,
    photo : DataTypes.STRING,
    name : DataTypes.STRING,
    rom : DataTypes.STRING,
    color : DataTypes.STRING,
    price : DataTypes.INTEGER,
    quantity : DataTypes.INTEGER,
    total : DataTypes.INTEGER
});

export default Payment