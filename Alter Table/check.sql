ALTER TABLE person 
ADD COLUMN mob VARCHAR(15) CHECK(LENGTH(mob)>=10); --CHecks the length if mob is greater than 10