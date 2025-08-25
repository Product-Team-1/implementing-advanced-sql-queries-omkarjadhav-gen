const { setupDatabase, knex } = require('../setup');

async function executeQuery() {
  await setupDatabase();

  const result = await knex.raw(`
    SELECT Gender, AVG(PostLikes) as TotalPostLikes
    FROM user_data
    INNER JOIN trending_posts ON User_ID = UserID
    GROUP BY Gender;
  `);
  console.log(JSON.stringify(result));
  await knex.destroy();
}

executeQuery();