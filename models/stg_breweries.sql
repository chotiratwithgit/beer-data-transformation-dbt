-- 1. บังคับให้สร้างเป็นตาราง และระบุ Schema ให้ชัดเจน
{{ config(
    materialized='table'
) }}

-- 2. ดึงข้อมูลจากตารางดิบ
with source_data as (
    -- ใช้คำสั่ง select ปกติไปก่อนเพื่อทดสอบความชัวร์
    select * from public.breweries
)

-- 3. ปรุงข้อมูล
select
    id,
    upper(name) as brewery_name,
    brewery_type,
    city,
    coalesce(state, 'N/A') as state_name,
    country
from source_data