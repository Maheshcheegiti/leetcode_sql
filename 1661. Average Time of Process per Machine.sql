# Write your MySQL query statement below
SELECT machine_id, ROUND(AVG(p),3) as processing_time FROM (
SELECT a.machine_id, (a.timestamp-b.timestamp) as p FROM Activity a LEFT JOIN Activity b ON a.machine_id=b.machine_id AND a.process_id=b.process_id WHERE (a.timestamp-b.timestamp)>0 ) AS t2 GROUP BY machine_id;
