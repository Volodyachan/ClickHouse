-- Tags: no-fasttest

DROP TABLE IF EXISTS h3_indexes;

CREATE TABLE h3_indexes (h3_index UInt64) ENGINE = Memory;

-- Test h3 indices selected from original test fixture: https://github.com/uber/h3/blob/master/src/apps/testapps/testH3CellAreaExhaustive.c

INSERT INTO h3_indexes VALUES (1298057039473278975);
INSERT INTO h3_indexes VALUES (1370114633511206911);
INSERT INTO h3_indexes VALUES (1442172227549134847);
INSERT INTO h3_indexes VALUES (1514229821587062783);
INSERT INTO h3_indexes VALUES (1232301846085763071);
INSERT INTO h3_indexes VALUES (1304359440123691007);
INSERT INTO h3_indexes VALUES (1376417034161618943);
INSERT INTO h3_indexes VALUES (1448474628199546879);
INSERT INTO h3_indexes VALUES (1598506838100279295);
INSERT INTO h3_indexes VALUES (1238219417666453503);
INSERT INTO h3_indexes VALUES (1310277011704381439);
INSERT INTO h3_indexes VALUES (1382334605742309375);
INSERT INTO h3_indexes VALUES (1458182628678041599);
INSERT INTO h3_indexes VALUES (1530240222715969535);
INSERT INTO h3_indexes VALUES (1602297816753897471);
INSERT INTO h3_indexes VALUES (1242009915283734527);

SELECT round(h3ExactEdgeLengthKm(h3_index), 2) FROM h3_indexes ORDER BY h3_index;

DROP TABLE h3_indexes;
