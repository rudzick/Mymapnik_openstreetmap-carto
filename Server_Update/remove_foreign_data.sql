\set ost st_setsrid( st_makebox2d( st_makepoint(1931393,-20644643), st_makepoint(20037509,20644643)), 3857) -- osten
\set west st_setsrid( st_makebox2d( st_makepoint(-20037509,-20644643), st_makepoint(611145,20644643)), 3857) -- westen
\set nord st_setsrid( st_makebox2d( st_makepoint(611144,7392980), st_makepoint(2224164,20644643)), 3857) -- norden
\set sued st_setsrid( st_makebox2d( st_makepoint(614483,-20366991), st_makepoint(2226390,5741973)), 3857) -- sueden
\set dach st_setsrid( st_makebox2d( st_makepoint(645248,5731339), st_makepoint(1917161,7379934)), 3857) -- D-A-CH

DELETE FROM planet_osm_ways WHERE id IN ( SELECT w.id
 FROM planet_osm_ways AS w
 JOIN planet_osm_line AS l
 ON ( l.osm_id > 0 AND l.osm_id = w.id AND ( l.way && :west OR l.way && :sued OR l.way && :ost OR l.way && :nord ) AND NOT l.way && :dach )
 );
DELETE FROM planet_osm_ways WHERE id IN ( SELECT w.id
 FROM planet_osm_ways AS w
 JOIN planet_osm_polygon AS l
 ON ( l.osm_id > 0 AND l.osm_id = w.id AND ( l.way && :west OR l.way && :sued OR l.way && :ost OR l.way && :nord ) AND NOT l.way && :dach )
 );
DELETE FROM planet_osm_rels WHERE id IN ( SELECT w.id
 FROM planet_osm_rels AS w
 JOIN planet_osm_polygon AS l
 ON ( l.osm_id < 0 AND l.osm_id = w.id AND ( l.way && :west OR l.way && :sued OR l.way && :ost OR l.way && :nord ) AND NOT l.way && :dach )
 );
DELETE FROM planet_osm_rels WHERE id IN ( SELECT w.id
 FROM planet_osm_rels AS w
 JOIN planet_osm_line AS l
 ON ( l.osm_id < 0 AND l.osm_id = w.id AND ( l.way && :west OR l.way && :sued OR l.way && :ost OR l.way && :nord ) AND NOT l.way && :dach )
 );

DELETE FROM planet_osm_polygon
 WHERE ( way && :west OR way && :sued OR way && :ost OR way && :nord ) AND NOT way && :dach;
DELETE FROM planet_osm_line
 WHERE ( way && :west OR way && :sued OR way && :ost OR way && :nord ) AND NOT way && :dach;
DELETE FROM planet_osm_point
 WHERE ( way && :west OR way && :sued OR way && :ost OR way && :nord ) AND NOT way && :dach;
