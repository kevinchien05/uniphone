import {sequelize, DataTypes} from './model.js';

const Contact = sequelize.define('contact', {
    c_name : DataTypes.STRING,
    c_email : DataTypes.STRING,
    c_phone : DataTypes.STRING,
    c_message : DataTypes.TEXT
});

export default Contact