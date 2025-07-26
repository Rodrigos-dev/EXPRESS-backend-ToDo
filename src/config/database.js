
//para rodar banco local
// const mongoose = require('mongoose');

// const url = 'mongodb://localhost:27017/todo';
// mongoose.connect(url, {useNewUrlParser: true});

// module.exports = mongoose

//para rodar com docker
const mongoose = require('mongoose');

const url = 'mongodb://mongo:27017/todo'; // 'mongo' é o nome do serviço no docker-compose
mongoose.connect(url, { useNewUrlParser: true, useUnifiedTopology: true });

module.exports = mongoose;