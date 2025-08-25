const { setupDatabase, knex } = require('../setup');

async function executeQuery() {
  await setupDatabase();

  const result = await knex.raw(`
    SELECT Gender, AVG(Posts) as AvgPosts
    FROM user_data
    GROUP BY Gender
    HAVING AVG(Posts) > 200;
  `);
  console.log(JSON.stringify(result));
  await knex.destroy();
}

executeQuery();