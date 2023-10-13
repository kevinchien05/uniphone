import express from "express";
//session
import session from 'express-session';
//models
import User from "./models/user.js";
import Product from "./models/product.js";
import Contact from "./models/contact.js";
import Wish from "./models/wish.js";
import Cart from "./models/cart.js";
import Payment from "./models/payment.js";

//controller
import user_controller from './controllers/user.js';

const app = express();

const hostname = '127.0.0.1';
const port = 3000;

app.use(express.json());
app.use(express.urlencoded({extended:false}));
app.use(express.static('public'));
app.set('view engine', 'ejs');

//session
app.use(session({
    secret: 'uniphone secret',
    resave: false,
    saveUninitialized: true,
    cookie: {maxAge: 60*60*1000} //1 jam
}));

// ==* Route EJS using controllers *==
app.get('/login', user_controller.login);
app.post('/login',user_controller.auth);
app.get('/logout',user_controller.logout);

// Routing
app.get('/', (req, res) => {
    Product.findAll().then((results) => {
        res.render('index', { products: results , i_user: req.session.user || ""});
    });
})

app.get('/product', (req,res) => {
    Product.findAll().then((results) => {
        res.render('brand', { products: results , i_user: req.session.user || "" });
    });
})

app.get('/product-Apple', (req,res) => {
    Product.findAll({where: {brand: "Apple"}}).then((results) => {
        res.render('brand', { products: results , i_user: req.session.user || "" });
    });
})

app.get('/product-Samsung', (req,res) => {
    Product.findAll({where: {brand: "Samsung"}}).then((results) => {
        res.render('brand', { products: results , i_user: req.session.user || "" });
    });
})


app.get('/about', (req,res) => {
    res.render('about' , {i_user: req.session.user || ""});
});

app.get('/cart', (req,res) => {
    Cart.findAll({where: {id_user: req.session.user.id} }
        ).then((results) => {
            res.render('cart', {carts : results, i_user: req.session.user || ""})
        })
});

app.get('/wish', (req,res) => {
    Wish.findAll({where: {id_user: req.session.user.id} }
        ).then((results) => {
            res.render('wish', {wishes : results, i_user: req.session.user || ""})
        })
});

app.get('/register', (req,res) => {
    res.render('register');
})

app.get('/forget', (req,res) => {
    User.findAll().then((results) => {
        res.render('forget', { users : results });
    });
})

app.get('/payment', (req,res) => {
    Payment.findOne({where: {id_user: req.session.user.id} }
        ).then((results) => {
            res.render('payment', {payments : results, i_user: req.session.user || ""})
        })
})

app.get('/:id', (req,res) => {
    Product.findOne({ where: { id: req.params.id } }
        ).then((results) => {
            res.render('details', { products: results , i_user: req.session.user || "" });
        })
});

/* Membuat tabel di database */
app.get('/api/create_table', (req,res)=>{
    User.sync();
    Product.sync();
    Contact.sync();
    Wish.sync();
    Cart.sync();
    Payment.sync({force:true});
    res.end("Tabel berhasil dibuat");
})

/* Menampilkan semua daftar user */
app.get('/api/users', (req,res)=>{
    User.findAll().then((results)=>{
        let data = {
            status: 200,
            error: null,
            response: results
        }
        res.json(data);
    })
})

/* Menambahkan user ke dalam tabel user */
app.post('/api/user', (req,res)=>{
    User.create({username: req.body.username, user_email: req.body.user_email, password: req.body.password}
    ).then((results) => {
        res.json( {status: 200, error: null, Response: results});
    }).catch(err => {
        res.json({status: 502, error: err});
    })
})

/* Mengubah passowrd berdasarkan email user */
app.put('/api/user/:user_email', (req,res)=>{
    User.update({ password: req.body.password},
        { where: {user_email: req.params.user_email}}
    ).then((results) => {
        res.json( {status: 200, error: null, Response: results});
    }).catch(err => {
        res.json({status: 502, error: err});
    })
})

/* Menambahkan Komentar pada Contact Us */
app.post('/api/comments', (req,res) => {
    Contact.create({
        c_name : req.body.c_name,
        c_email : req.body.c_email,
        c_phone : req.body.c_phone,
        c_message : req.body.c_message
    }).then((results) => {
        res.json({status:201,error:null,response:results});
    }).catch((err) => {
        res.json({status:500,error:err});
    });
});

/* Menampilkan Komentar */
app.get('/api/comments', (req,res) => {
    Contact.findAll().then((results) => {
        res.json({status:200,error:null,response:results});
    });
});

/* Menambahkan item ke wish */
app.post('/api/wish', (req,res) => {
    Wish.create({
        id_user : req.session.user.id,
        product_id : req.body.product_id,
        photo : req.body.photo,
        name : req.body.name,
        rom : req.body.rom,
        color : req.body.color,
        price : req.body.price
    }).then((results) => {
        res.json({status:201,error:null,response:results});
    }).catch((err) => {
        res.json({status:500,error:err});
    });
})

/* menghapus data wish */
app.delete('/api/wish/:id', (req, res) => {
    Wish.destroy({ where: { id: req.params.id } }
    ).then(() => {
        res.json({ status: 200, error: null, Response: results });
    }).catch(err => {
        res.json({ status: 500, error: err, Response: {} });
    })
})

/* Menambahkan item ke cart */
app.post('/api/cart', (req,res) => {
    Cart.create({
        id_user : req.session.user.id,
        product_id : req.body.product_id,
        photo : req.body.photo,
        name : req.body.name,
        rom : req.body.rom,
        color : req.body.color,
        price : req.body.price,
        quantity : req.body.quantity
    }).then((results) => {
        res.json({status:201,error:null,response:results});
    }).catch((err) => {
        res.json({status:500,error:err});
    });
})

/* menghapus data cart */
app.delete('/api/cart/:id', (req, res) => {
    Cart.destroy({ where: { id: req.params.id } }
    ).then(() => {
        res.json({ status: 200, error: null, Response: results });
    }).catch(err => {
        res.json({ status: 500, error: err, Response: {} });
    })
})

/* Menambahkan item ke payment */
app.post('/api/pay', (req,res) => {
    Payment.create({
        id_user : req.session.user.id,
        product_id : req.body.product_id,
        cart_id : req.body.cart_id,
        photo : req.body.photo,
        name : req.body.name,
        rom : req.body.rom,
        color : req.body.color,
        price : req.body.price,
        quantity : req.body.quantity,
        total : req.body.total
    }).then((results) => {
        res.json({status:201,error:null,response:results});
    }).catch((err) => {
        res.json({status:500,error:err});
    });
})

/* menghapus data cart */
app.delete('/api/pay/:id', (req, res) => {
    Payment.destroy({ where: { id: req.params.id } }
    ).then(() => {
        res.json({ status: 200, error: null, Response: results });
    }).catch(err => {
        res.json({ status: 500, error: err, Response: {} });
    })
})

app.get('/api/search/:name', (req,res) => {
    Product.findAll({where: {name : req.params.name }}).then((results) => {
        res.json({status:200,error:null,response:results});
    });
})

app.listen(port, () => {
    console.log(`Server running at ${hostname}:${port}`);
})