#!/bin/bash
for i in `seq 1 $2`;
do
        sh ./run_queries.sh $1 BFS relax &
        wait
done
wait
for i in `seq 1 $2`;
do
        sh ./run_queries.sh $1 OBFS relax &
        wait
done
wait
for i in `seq 1 $2`;
do
        sh ./run_queries.sh $1 OMBS relax &
        wait
done
wait
for i in `seq 1 $2`;
do
        sh ./run_queries.sh $1 FLIQUE relax &
        wait
done