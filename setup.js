const knex = require('knex')(require('./knexfile').development);
const fs = require('fs');

async function setupDatabase() {
  const sql = fs.readFileSync('./data/table_creation.sql', 'utf-8');
  const statements = sql.split(';').map(s => s.trim()).filter(Boolean);
  for (const stmt of statements) {
    await knex.raw(stmt);
  }
}

module.exports = { setupDatabase, knex };
