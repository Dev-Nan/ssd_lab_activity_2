#!/bin/bash
awk 'BEGIN{count=0}
{count+=1;}
END{ 
if(count%2==0) idx=count/2;
else idx=(count+1) / 2;
for(i=0;i<NR;i++)
 { if(i==idx) print $0;}
#print idx;
}' $1

#echo $idx
#awk -v var=$idx '{ print idx
#if(NR==var) print $0;}' $1  
