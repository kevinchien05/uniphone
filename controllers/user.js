import User from '../models/user.js';

const login = (req,res,next) => {
    //message
    let msg = req.session.err || "";
    let i_user = req.session.user || "";
    //Reset
    req.session.err = "";
    res.render('login', {i_user, msg});
};

const logout = (req,res,next) => {
    req.session.destroy();
    res.redirect('/');
};

const auth = (req,res,next) => {
    const data = {
        user_email : req.body.user_email,
        password : req.body.password
    };
    User.findOne({where:{user_email:data.user_email}}).then((results) => {
        if(!results){
            req.session.err = "Incorrect Email Or Password";
            res.redirect('/login');
        }
        else if(data.password != results.password){
            req.session.err = "Incorrect Password";
            res.redirect('/login');
        }
        else{
            req.session.user = results;
            res.redirect("/");
        }
    }).catch(err => {
        req.session.err = "Error Database Query";
        res.redirect('/login');
    })
};

export default {login,logout,auth};