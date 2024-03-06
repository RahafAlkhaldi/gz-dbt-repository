select
    date_date, 
    operational_margin - ads_cost as ads_margin,
    round(average_basket,2) as average_basket,
    ads_cost,
    ads_impression,
    ads_clicks,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    logcost,
    ship_cost,
FROM {{ref('int_campaigns_day')}}
FULL OUTTER JOIN {{ref('finance_days')}}
   using(date_date)
order by date_date DESC