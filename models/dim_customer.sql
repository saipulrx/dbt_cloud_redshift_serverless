with source as (
    select *
    from {{ source('dbtcloud_redshift_serverless','raw_customer') }}
)
select 
    *,
    current_timestamp as ingestion_timestamp
from source