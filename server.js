const express = require('express')
const app = express()
const port = 8000

app.get('/', (req, res) => {
  res.send('Hello world from node, <a href="/python">clic here for python</a>')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})