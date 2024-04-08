#!/bin/sh

mongo <<EOF

use duDB

db.hierarchy.find({}).pretty()

EOF

