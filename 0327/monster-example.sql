select m.name, m.danger_level,h.name
from heroes h
join monsters m
on m.kill_by = h.id
where h.hero_level = 's' ;

select m.name, m.danger_level,h.name
from heroes h
join monsters m
on m.kill_by = h.id
where h.hero_level = 's' ;

-- SELECT * FROM awesome_db.monsters
-- WHERE KILL_BY in
-- (
-- 	SELECT id
--    from heroes
--    where name in ( '埼玉','傑諾斯')    
-- );

-- SELECT * FROM awesome_db.monsters
-- WHERE KILL_BY in
-- (
-- 	SELECT id
--     from heroes
--     where name like '%背心%'    
-- );

-- SELECT * FROM awesome_db.monsters
-- WHERE KILL_BY = 
-- (
-- 	SELECT id
--     from heroes
--     where name= '埼玉'    
-- );
