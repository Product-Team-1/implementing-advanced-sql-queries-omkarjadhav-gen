const { setupDatabase, knex } = require('../setup');

async function executeQuery() {
  await setupDatabase();

  const result = await knex.raw(`
    SELECT Gender, AVG(Posts) as AvgPosts
    FROM user_data
    WHERE Date_Joined < '2021-01-01'
    GROUP BY Gender;
  `);
  console.log(JSON.stringify(result));
  await knex.destroy();
}

executeQuery();