const express = require('express');
const app = express();
const PORT = 3000;

app.use(express.json());
app.use('/api', require('./src'));

app.listen(PORT, () => {
  console.log(`Server is running on yueghsf ${PORT}`);
});