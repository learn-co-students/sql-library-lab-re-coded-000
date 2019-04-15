UPDATE characters SET species = "Martian"  
WHERE id IN (SELECT id FROM characters order by id desc limit 1);