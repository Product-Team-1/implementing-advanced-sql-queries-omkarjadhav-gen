const { setupDatabase, knex } = require('../setup');

async function executeQuery() {
  await setupDatabase();

  const result = await knex.raw(`
    SELECT Gender, SUM(Likes) as TotalLikes
    FROM user_data
    GROUP BY Gender
    ORDER BY TotalLikes DESC;
  `);
  console.log(JSON.stringify(result));
  await knex.destroy();
}

executeQuery();