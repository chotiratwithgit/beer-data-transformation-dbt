--Force it to be created as a table and clearly specify the schema
{{ config(
    materialized='table'
) }}

-- select data from raw table
with source_data as (
    
    select * from public.breweries
)

-- Adjust the data to be consistent
select
    id,
    upper(name) as brewery_name, -- Transform all characters to uppercase
    brewery_type,
    city,
    coalesce(state, 'N/A') as state_name,
    country
from source_data