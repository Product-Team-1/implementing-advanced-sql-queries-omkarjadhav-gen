const { setupDatabase, knex } = require('../setup');

async function executeQuery() {
  await setupDatabase();

  const result = await knex.raw(`
    SELECT User_Name, PostContent
    FROM user_data
    LEFT JOIN trending_posts ON User_ID = UserID
    ORDER BY User_Name, PostLikes DESC;
  `);
  console.log(JSON.stringify(result));
  await knex.destroy();
}

executeQuery();