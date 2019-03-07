#!/bin/bash

div=$(ls -l *report* | wc -l)

printf "READ\tWRITE\tTOTAL\tTRANSACTIONS\tQUERIES\tMIN_LATENCY(ms)\tMAX_LATENCY(ms)\tAVG_LATENCY(ms)\t95_PERCENTILE\tSUM_LATENCY(ms)\n" >> log.csv                                
for file in *report*
do
 echo $file
 READ=$(grep "read:" $file | sed -e 's/ *//g' | cut -d ":" -f 2)
 WRITE=$(grep "write:" $file | sed -e 's/ *//g' | cut -d ":" -f 2)
 TOTAL=$(grep "total:" $file | sed -e 's/ *//g' | cut -d ":" -f 2)
 TRANSACTIONS=$(grep "transactions:" $file | sed -e 's/  */ /g' | cut -d ":" -f 2 | cut -d " " -f 2)                                                                              
 QUERIES=$(grep "queries:" $file | sed -e 's/  */ /g' | cut -d " " -f 3)
 MIN_LATENCY=$(grep "min:" $file | sed -e 's/  *//g' | cut -d ":" -f 2)
 MAX_LATENCY=$(grep "max:" $file | sed -e 's/  *//g' | cut -d ":" -f 2)
 AVG_LATENCY=$(grep "avg:" $file | sed -e 's/  *//g' | cut -d ":" -f 2)
 PERCENTILE=$(grep "95th" $file | sed -e 's/  */ /g' | cut -d ":" -f 2)
 SUM_LATENCY=$(grep "sum:" $file | sed -e 's/  */ /g' | cut -d ":" -f 2)
 echo $READ $WRITE $TOTAL $TRANSACTIONS $QUERIES $MIN_LATENCY $MAX_LATENCY $AVG_LATENCY $PERCENTILE $SUM_LATENCY                                                                  
 printf "$READ\t$WRITE\t$TOTAL\t$TRANSACTIONS\t$QUERIES\t$MIN_LATENCY\t$MAX_LATENCY\t$AVG_LATENCY\t$PERCENTILE\t$SUM_LATENCY\n" >> log.csv                                        
done

