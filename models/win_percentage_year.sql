select 
    year(game_date::date) as season,
    team_id_home,
    wl_home,
    sum(case when wl_home = 'W' then 1 else 0 end) as win_count
from {{source('rafael_test','GAME')}}
group by all
limit 1