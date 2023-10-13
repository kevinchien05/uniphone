import {sequelize, DataTypes} from "./model.js";

const Product = sequelize.define('product', {
    name: DataTypes.STRING,
    brand: DataTypes.STRING,
    photo: DataTypes.STRING,
    price: DataTypes.INTEGER,
    price2: DataTypes.INTEGER,
    price3: DataTypes.INTEGER,
    color: DataTypes.STRING,
    color2: DataTypes.STRING,
    color3: DataTypes.STRING,
    rom: DataTypes.STRING,
    rom2: DataTypes.STRING,
    rom3: DataTypes.STRING,
    details: DataTypes.TEXT,
    box: DataTypes.TEXT
});

export default Product;