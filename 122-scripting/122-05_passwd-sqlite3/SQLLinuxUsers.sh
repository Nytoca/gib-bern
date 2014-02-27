#!/bin/bash
#

database="$PWD/pinguin_auto.db"

sqlite3 $database <<EOF
DROP TABLE tuxies;
CREATE TABLE tuxies (id INTEGER PRIMARY KEY, name TEXT);
INSERT INTO tuxies VALUES (1, 'laratux');
INSERT INTO tuxies VALUES (2, 'cutetux');
INSERT INTO tuxies VALUES (3, 'mrtux');
INSERT INTO tuxies VALUES (4, 'rambotux');
INSERT INTO tuxies VALUES (5, 'luketux');
INSERT INTO tuxies VALUES (6, 'slashtux');
INSERT INTO tuxies VALUES (7, 'divatux');
SELECT * FROM tuxies ORDER BY name;
EOF

echo "Anzahl tuxies"
sqlite3 $database "SELECT COUNT(*) FROM tuxies;"
