select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from sasha-chainguard.dbt_tutorial.raw_orders