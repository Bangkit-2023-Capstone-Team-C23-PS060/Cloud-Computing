/* eslint-disable no-console */
/* eslint-disable eol-last */
/* eslint-disable import/no-extraneous-dependencies */
const mysql = require('mysql');

const db = mysql.createConnection({
  host: '<public ip>',
  user: 'root',
  password: 'elektronio',
  database: 'elektronio',
});

db.connect((err) => {
  if (err) {
    console.error('Error connecting to database:', err);
    return;
  }
  console.log('Connected to the database');
});

module.exports = { db };
