select s.stadion_name,t.team_name,te.team_name,r.refere_firstname,r.refere_lastname,
Concat(g.game_home_goal,':',g.game_guest_goal)
from [ftb].[game] g join [ftb].[team] t on g.game_home=t.team_id 
join [ftb].[team] te on te.team_id=g.game_guest 
join [ftb].[stadion] s on s.stadion_id=t.stadion_id 
join [ftb].[refere] r on r.refere_id=g.game_refere

select s.stadion_name,count(g.game_home) from [ftb].[game] g join [ftb].[team] t on g.game_home=t.team_id 
join [ftb].[stadion] s on s.stadion_id=t.stadion_id
GROUP BY s.stadion_name


select top 1 t.team_name,SUM(g.game_guest_goal) from [ftb].[game] g join [ftb].[team] t on g.game_guest=t.team_id
GROUP BY t.team_name
order by 2 desc



INSERT [ftb].[game]([game_home],[game_guest],[game_refere],[game_home_goal],[game_guest_goal])
VALUES(10,11,1,2,3)


UPDATE [ftb].[refere] 
SET refere_firstname = 'Pierluigi', refere_lastname = 'Collina'
WHERE refere_id=2