#!/bin/bash

mkdir -p data

sql="sqlite3 srfe.db"

$sql "select text from msg where platform='SinaWeiboStatus'" > data/text.SinaWeiboStatus
$sql "select text from msg where platform='RenrenStatus'" > data/text.RenrenStatus
$sql "select text from msg where platform='TencentWeiboStatus'" > data/text.TencentWeiboStatus

#cd data
#
#cd -

exit 0 