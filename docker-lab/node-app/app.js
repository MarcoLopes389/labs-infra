const express = require('express')
const prometheus = require('express-prometheus-middleware')
const app = express()

app.use(prometheus({
    metricsApp: app,
    collectDefaultMetrics: true
}))
app.use(express.json())

app.get('/', (req, res) => {
    console.log('Hello')
    res.json({ok: true})
})

module.exports = app