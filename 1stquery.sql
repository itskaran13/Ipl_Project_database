select winner ,count(*) as Match_winner from matches  where winner is not null group by winner order by Match_winner desc;