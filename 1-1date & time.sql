- 日期分区：
  date = '${date}' 格式为 yyyyMMdd
  date = '${DATE}' 格式为 yyyy-MM-dd
- 截取小时： 
  substr(create_time,1,13) as hour
- 截取日期： 
  to_date(create_time) as date
  substr(create_time,1,10) as date
- 截取月份：
  substr(create_time,1,7) as month
- 日期date分区转化中间横线格式：
  '${date,yyyy-MM-dd}'
  substr(date,1,4)||'-'||substr(date,5,2)||'-'||substr(date,7,2) as date
- 时间戳：
  FROM_UNIXTIME(create_time) as create_time
  from_unixtime(create_time,'yyyy-MM-dd') as risktime
  from_unixtime(unix_timestamp(date ,'yyyyMMdd'),'yyyy-MM-dd') as date,
- 日期差： 
  datediff(create_time,apply_time)
- 最新时间分区：
  date = max_pt('xxxxxxxhive表名')
- 标准带横线日期格式与分区对应： 
  regexp_replace(substr(a.create_time,1,10),'-','') = b.date
- 仪表盘中：
  将date日期分区变为可时间排序yyyy-MM-dd：CAST(date as Nullable(Date))
- 取一段时间范围内时间：
  where date between '20220701' and '20220711'
  date_format(create_time,'yyyyMMdd') = '${date}'
  from_unixtime(create_time, 'yyyyMMdd') between '20220601' and '20220725'
