CREATE OR REPLACE VIEW baeume_view AS 
 SELECT way,
        "natural",
	tags->'genus' AS "genus",
        tags->'genus:de' AS "genus:de",
	tags->'genus:wikidata' AS "genus:wikidata",
	tags->'species' AS "species",
	tags->'species:de' AS "species:de",
	tags->'species:wikidata' AS "species:wikidata",
	tags->'taxon:cultivar' AS "taxon:cultivar",
	tags->'taxon:cultivar:de' AS "taxon:cultivar:de",
	tags->'taxon' AS "taxon",
	tags->'taxon:wikidata' AS "taxon:wikidata",
	tags->'sex' AS "sex",
	tags->'start_date' AS start_date,
	tags->'height' AS height,
	tags->'check_date:height' AS "check_date:height",
	tags->'diameter_crown' AS diameter_crown,
	tags->'check_date:diameter_crown' AS "check_date:diameter_crown",
	tags->'circumference' AS circumference,
	tags->'check_date:circumference' AS "check_date:circumference",
	tags->'check_date' AS check_date,
	tags-> 'denotation' AS "denotation",
	"name",
	tags->'source' AS source,
	tags->'source:date' AS "source:date",	
	tags->'leaf_type' AS leaf_type,
	tags->'leaf_cycle' AS leaf_cycle,
	"osm_id"
       FROM planet_osm_point  
       WHERE ( "natural" = 'tree' );

GRANT select ON baeume_view TO public;

CREATE OR REPLACE VIEW straeucher_view AS
 SELECT way,
        "natural",
	tags->'genus' AS "genus",
        tags->'genus:de' AS "genus:de",
	tags->'genus:wikidata' AS "genus:wikidata",
	tags->'species' AS "species",
	tags->'species:de' AS "species:de",
	tags->'species:wikidata' AS "species:wikidata",
	tags->'taxon:cultivar' AS "taxon:cultivar",
	tags->'taxon:cultivar:de' AS "taxon:cultivar:de",
	tags->'taxon' AS "taxon",
	tags->'taxon:wikidata' AS "taxon:wikidata",
	tags->'sex' AS "sex",
	tags->'start_date' AS start_date,
	tags->'height' AS height,
	tags->'check_date:height' AS "check_date:height",
	tags->'diameter_crown' AS diameter_crown,
	tags->'check_date:diameter_crown' AS "check_date:diameter_crown",
	tags->'circumference' AS circumference,
	tags->'check_date:circumference' AS "check_date:circumference",
	tags->'check_date' AS check_date,
	tags-> 'denotation' AS "denotation",
	"name",
	tags->'source' AS source,
	tags->'source:date' AS "source:date",	
	tags->'leaf_type' AS leaf_type,
	tags->'leaf_cycle' AS leaf_cycle,
	"osm_id"
       FROM planet_osm_point  
       WHERE ( "natural" = 'shrub' );

GRANT select ON straeucher_view TO public;

CREATE OR REPLACE VIEW parzellengrenzen_view AS
 SELECT way, lower(regexp_replace(ref, '[^[:alnum:]]', '', 'g')) AS ref,
             tags->'barrier' AS barrier
            FROM planet_osm_polygon        
            WHERE tags->'allotments' = 'plot';
	    
GRANT select ON parzellengrenzen_view TO public;

CREATE OR REPLACE VIEW gebaeude_hh_view AS
 SELECT  gebaeude.way, lower(regexp_replace(coalesce(gebaeude.tags->'building:ref',gebaeude."name"), '[^[:alnum:]]', '', 'g')) AS ref,
            lower(regexp_replace(gebaeude."name", '[^[:alnum:]]', '', 'g')) AS name,
            gebaeude.tags
            FROM planet_osm_polygon gebaeude,
            planet_osm_polygon hh       
            WHERE hh."name" ILIKE '%Hardthöhe%' AND hh.landuse='military'
            AND gebaeude."building" IS NOT NULL
            AND ST_Contains (hh.way, gebaeude.way)
	    AND gebaeude.way && ST_MakeBox2D(ST_Point(783050.3303630851, 6567689.7848800225),  ST_Point(784933.3440776498, 6569351.304078727))
            AND hh.way && ST_MakeBox2D(ST_Point(783050.3303630851, 6567689.7848800225),  ST_Point(784933.3440776498, 6569351.304078727)) ;
	    
GRANT select ON gebaeude_hh_view TO public;
GRANT select ON trees TO public;
GRANT select ON shrubs TO public;
GRANT select ON hedges TO public;
