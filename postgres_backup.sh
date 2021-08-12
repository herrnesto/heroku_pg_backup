#!/bin/bash
heroku pg:backups:capture -a bioco-new
heroku pg:backups:download -a bioco-new
mv latest.dump db_dumps/bioco_pg_$(date +%d-%m-%Y-%H%M).dump

~
