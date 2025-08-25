CREATE TABLE user_data (
    User_ID INT PRIMARY KEY,
    Account_Name VARCHAR(50),
    User_Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Date_Joined DATE,
    Posts INT,
    Likes INT,
    Followers INT,
    Following INT
);

INSERT INTO user_data (User_ID, Account_Name, User_Name, Age, Gender, Date_Joined, Posts, Likes, Followers, Following)
VALUES
(1, 'starlight_dancer', 'Emma Johnson', 28, 'Female', '2020-05-15', 120, 450, 200, 150),
(2, 'zen_master', 'Chris Roberts', 30, 'Male', '2019-12-20', 80, 300, 150, 180),
(3, 'neon_ninja', 'Jordan Lee', 25, 'Other', '2021-02-10', 95, 600, 250, 220),
(4, 'sky_wanderer', 'Alex Smith', 32, 'Male', '2018-11-04', 200, 900, 350, 300),
(5, 'sunset_lover', 'Taylor Brown', 27, 'Female', '2017-09-01', 150, 800, 400, 380),
(6, 'mountain_whisperer', 'Sam Jones', 29, 'Male', '2016-06-12', 300, 1200, 500, 450),
(7, 'moonbeam_dreams', 'Avery Garcia', 23, 'Female', '2022-03-08', 75, 250, 180, 200),
(8, 'starlight_dancer', 'Robin Clark', 26, 'Male', '2019-08-17', 180, 700, 300, 280),
(9, 'sunshine_serenade', 'Casey Miller', 31, 'Female', '2020-11-23', 220, 1000, 450, 400),
(10, 'echo_echo', 'Eli Wilson', 33, 'Other', '2015-04-30', 400, 1500, 600, 550),
(11, 'whimsy_wanderlust', 'Riley Rodriguez', 24, 'Female', '2023-01-19', 50, 150, 120, 100),
(12, 'serene_spirit', 'Harper Thompson', 34, 'Male', '2014-07-14', 500, 1800, 700, 650),
(13, 'soulful_singer', 'Jamie Hall', 26, 'Other', '2018-03-27', 280, 1100, 500, 480),
(14, 'stellar_voyager', 'Skylar White', 35, 'Female', '2013-10-05', 600, 2000, 800, 750),
(15, 'aurora_artist', 'Quinn Scott', 21, 'Male', '2022-06-29', 40, 120, 100, 90),
(16, 'magic_mountain', 'Dakota Martin', 36, 'Female', '2017-05-18', 550, 1900, 750, 700),
(17, 'dreamweaver', 'Avery Gomez', 20, 'Male', '2021-09-14', 30, 80, 80, 70),
(18, 'wild_wanderer', 'Jordan Hernandez', 37, 'Female', '2016-02-03', 700, 2200, 900, 850),
(19, 'cosmic_explorer', 'Sasha Lee', 25, 'Male', '2019-04-12', 320, 1300, 550, 500),
(20, 'moonlit_mermaid', 'Riley Wood', 27, 'Female', '2018-01-07', 260, 1000, 480, 450);

CREATE TABLE trending_posts (
    PostID INT PRIMARY KEY,
    UserID INT,
    PostContent TEXT,
    PostLikes INT,
    PostDate DATE
);

INSERT INTO trending_posts (PostID, UserID, PostContent, PostLikes, PostDate)
VALUES
(10001, 7, 'Check out the new trailer for #MovieX! Exciting stuff!', 1256, '2024-07-01'),
(10002, 15, 'Top 10 summer fashion trends you can''t miss! #Fashion', 342, '2024-07-02'),
(10003, 3, 'Delicious recipe alert! Try our new chocolate cake recipe!', 987, '2024-07-02'),
(10004, 12, '5-minute ab workout you can do at home! #Fitness', 654, '2024-07-03'),
(10005, 18, 'Breaking: New smartphone model leaked! #TechNews', 1502, '2024-07-03');
