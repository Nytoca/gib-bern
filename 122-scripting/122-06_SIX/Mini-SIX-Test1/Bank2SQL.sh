#!/bin/bash
# Test1 122, gibb
c=0
(while read record
 do
   c=$((c+1))	
   Institut=`echo $record | cut -d ';' -f 1` 
   Kurz=`echo $record | cut -d ';' -f 2` 
   Domizil=`echo $record | cut -d ';' -f 3` 
   Adresse=`echo $record | cut -d ';' -f 4` 
   PLZ=`echo $record | cut -d ';' -f 5` 
   Ort=`echo $record | cut -d ';' -f 6` 
   echo "INSERT INTO tblBank VALUES ($c,'$Institut','$Kurz','$Domzil','$Adresse','$PLZ','$Ort');" >> AddBank.sql
done) < CHSIXBNK.csv
database="$PWD/CHBanken.db"
echo "DROP TABLE tblBank;" > CreateBank.sql
echo "CREATE TABLE tblBank (ID Integer Primary key, Institut text, Kurz text, Domzil text, Adresse text, PLZ text, ort text);"  >> CreateBank.sql
cat CreateBank.sql > bankjob.sql
cat AddBank.sql >> bankjob.sql
sqlite3 $database < bankjob.sql
rm CreateBank.sql
rm AddBank.sql
#rm bankjob.sql
