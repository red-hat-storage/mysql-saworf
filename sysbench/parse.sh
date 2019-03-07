#!/bin/bash

div=$(ls -l *report* | wc -l)

function get_reads()
{
 echo "READS:"
 for file in *report*
 do
   grep "read:" $file | sed -e 's/ *//g' | cut -d ":" -f 2
 done
 echo
}

function get_writes()
{
 echo "WRITES:"
 for file in *report*
 do
   grep "write:" $file | sed -e 's/ *//g' | cut -d ":" -f 2
 done
 echo
}

function get_totals()
{
 echo "TOTALS:"
 for file in *report*
 do
   grep "total:" $file | sed -e 's/ *//g' | cut -d ":" -f 2
 done
 echo
}

function get_transactions()
{
 echo "TRANSACTIONS:"
 for file in *report*
 do
   grep "transactions:" $file | sed -e 's/  */ /g' | cut -d ":" -f 2 | cut -d " " -f 2
 done
 echo
}

function get_queries()
{
 echo "QUERIES:"
 for file in *report*
 do
   grep "queries:" $file | sed -e 's/  */ /g' | cut -d " " -f 3
 done
 echo
}

function get_lat_min()
{
 echo "MINIMUM LATENCIES:"
 for file in *report*
 do
   grep "min:" $file | sed -e 's/  *//g' | cut -d ":" -f 2
 done
 echo
}

function get_lat_max()
{
 echo "MAXIMUM LATENCIES:"
 for file in *report*
 do
   grep "max:" $file | sed -e 's/  *//g' | cut -d ":" -f 2
 done
 echo
}

function get_lat_avg()
{
 echo "AVERAGE LATENCIES:"
 for file in *report*
 do
   grep "avg:" $file | sed -e 's/  *//g' | cut -d ":" -f 2
 done
 echo
}

function get_lat_95()
{
 echo "95TH PERCENTILE:"
 for file in *report*
 do
   grep "95th" $file | sed -e 's/  *//g' | cut -d ":" -f 2
 done
 echo
}

function get_lat_sum()
{
 echo "SUM LATENCIES:"
 for file in *report*
 do
   grep "sum:" $file | sed -e 's/  *//g' | cut -d ":" -f 2
 done
 echo
}

get_reads
get_writes
get_totals
get_transactions
get_queries 
get_lat_min
get_lat_max
get_lat_avg
get_lat_95
get_lat_sum

