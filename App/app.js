require('elastic-apm-node').start({
  serviceName: 'node-app',
  serverUrl: 'http://apm-server-apm-http.monitoring.svc.cluster.local:8200',
  environment: 'dev'
})

const express = require('express')
const app = express()

app.get('/', (req, res) => {
  res.send('Hello APM')
})

app.listen(3000)