const { setupDatabase, knex } = require('../setup');

async function executeQuery() {
  await setupDatabase();

  const result = await knex.raw(`
    SELECT ...;
  `);
  console.log(JSON.stringify(result));
  await knex.destroy();
}

executeQuery();