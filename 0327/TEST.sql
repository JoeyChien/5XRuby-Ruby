-- select *
-- from heroes
-- where hero_level = 's'
-- order by hero_rank;
-- Hero.where(hero_level = 'S').order_by(age: :asc)


-- SELECT hero_level, SUM(age)
-- FROM heroes
-- GROUP BY hero_level;
-- 各級的年齡總和

-- select avg(age)
-- from heroes
-- where hero_level = 'A';

-- SELECT count(*)
-- FROM heroes
-- WHERE hero_level = 'A';
-- Hero.where(hero_level: 'A').count (length?)

-- SET SQL_SAFE_UPDATES = 1;
-- UPDATE awesome_db.heroes
-- SET hero_level = 'B', hero_rank = 101
-- where id = 35;

-- 把MYSQL的安全更新模式關掉 SET SQL_SAFE_UPDATES = 0;
-- 把MYSQL的安全更新模式重開 SET SQL_SAFE_UPDATES = 1;

-- SELECT *
-- FROM awesome_db.heroes
-- WHERE hero_level NOT IN ('A', 'S') ;

-- SELECT *
-- FROM awesome_db.heroes
-- WHERE hero_level NOT IN ('A', 'S') ;

-- SELECT *
-- FROM awesome_db.heroes
-- WHERE hero_level <> 'S' ;

-- SELECT *
-- FROM awesome_db.heroes
-- WHERE hero_level IN ('A' ,'S');