Using MySQL in Grafana

From <http://docs.grafana.org/features/datasources/mysql/> 


```
create table t_log 
(SELECT
	MIN(
		UNIX_TIMESTAMP(createTime)
	) AS time_sec,
code,
	count(`id`) AS count,
	sum(`duration`)/count(`id`) as avg,
	'duration' AS metric
FROM
	log
GROUP BY
	date_format(
		createTime,
		'%Y%m%d%H%i'
	),code
ORDER BY
	date_format(
		createTime,
		'%Y%m%d%H%i'
),code ASC)
```



```
SELECT UNIX_TIMESTAMP(date_insert) as time_sec, temperature as value, 'temperature' as metric FROM meteo WHERE $__timeFilter(date_insert) ORDER BY date_insert ASC
```
From <https://community.grafana.com/t/how-to-add-time-series-queries-with-grafana-and-mysql/3170> 

```
select 'minute' AS __text, '%Y%m%d%H%i' as __value union select 'hour' AS __text, '%Y%m%d%H' as __value union select 'day' AS __text, '%Y%m%d' as __value union select 'month' AS __text, '%Y%m' as __value
```
From <https://community.grafana.com/t/how-to-add-time-series-queries-with-grafana-and-mysql/3170/2> 

