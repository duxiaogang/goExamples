#!/bin/sh

mongo <<EOF

use duDB

db.dropDatabase()

EOF

