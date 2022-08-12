/* Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id. */


select h.hacker_id, h.name
from submissions s
inner join challenges c
on s.challenge_id = c.challenge_id
inner join difficulty d
on c.difficulty_level = d.difficulty_level 
inner join hackers h
on s.hacker_id = h.hacker_id
where s.score = d.score and c.difficulty_level = d.difficulty_level
group by h.hacker_id, h.name
having count(s.hacker_id) > 1
order by count(s.hacker_id) desc, s.hacker_id asc

/* In this solution I used multiple joins by this order : first joined submissions and challenges tables and then joined the result table with difficulty and then joined the result table with hackers and then retrieved hacker id and name from the last resulted table where the hacker submission score matched with difficulty score (in order to retrieve only who got full score) and challenge difficulty level matched with original difficulty level then the result aggregated to hacker id and name and then filtered to the hacker id who exist in the table more than one time (the hacker id got full score more than one challenge)  ,   */