use Digital_Mkt

select * from Marketing

------ Tính toán bổ sung các trường chỉ số cần thiết
alter table Marketing
add ROMI decimal(10,2)
update Marketing 
set ROMI = case	
	when mark_spent = 0 then null
	else (((revenue - mark_spent) / mark_spent) * 100)
end

alter table Marketing
add CTR decimal(10,2)
update Marketing 
set CTR = case	
	when impressions = 0 then null
	else ((cast(clicks as decimal(18,2)) / cast(impressions as decimal(18,2))) * 100)
end

alter table Marketing
add CPC decimal(10,2)
update Marketing
set CPC = case
	when clicks = 0 then null
	else (mark_spent / clicks)
end

alter table Marketing
add CPL decimal(10,2)
update Marketing
set CPL = case
	when leads = 0 then null
	else (mark_spent /leads)
end

alter table Marketing
add CAC decimal(10,2)
update Marketing
set CAC = case
	when orders = 0 then null
	else (mark_spent / orders)
end

alter table Marketing
add AOV decimal(10,2)
update Marketing
set AOV = case
	when orders = 0 then null
	else (revenue / orders)
end

alter table Marketing
add CR1 decimal(10,2)
update Marketing
set CR1 = case
	when clicks = 0 then null
	else (cast(leads as decimal(18,2)) / cast(clicks as decimal(18,2)) * 100)
end

alter table Marketing
add CR2 decimal(10,2)
update Marketing
set CR2 = case
	when leads = 0 then null
	else (cast(orders as decimal(18,2)) / cast(leads as decimal(18,2)) * 100)
end

alter table Marketing
add GP decimal(10,2)
update Marketing
set GP = case
	when mark_spent = 0 then null
	else (revenue - mark_spent)
end

alter table Marketing
add ROAS decimal(10,2)
update Marketing
set ROAS = case
	when mark_spent = 0 then null
	else (revenue / mark_spent)
end


alter table Marketing
add weekname nvarchar(50)
update Marketing
set weekname = format(c_date, 'ddd')

alter table Marketing
add sort_day int
update Marketing
set sort_day = case
	when weekname = 'Monday' then 1
	when weekname = 'Tuesday' then 2
	when weekname = 'Wednesday' then 3
	when weekname = 'Thursday' then 4
	when weekname = 'Friday' then 5
	when weekname = 'Saturday' then 6
	when weekname = 'Sunday' then 7
end 
where weekname is not null












