const express = require('express')
const app = express()
const port = 3000
app.use(express.json());

app.get('/', (req, res) => {
  res.send('Hello World Yankees New York Derek Jeter 2!')
})

app.get('/saludo/:nombre', (req, res) => {
  const nombre = req.params.nombre;
  res.json({ mensaje: `¡Hola, ${nombre}! Bienvenido a tu API Dockerizada.` });
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
