
select player_name, round_number, team_id, season, round_pick
from {{source('rafael_test','DRAFT_HISTORY')}}
where round_number = 1

