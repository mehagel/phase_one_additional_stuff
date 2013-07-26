def team(players, team)
  if  players == 0 || team == 0
    return 0
  else
   return fact(players)/ (fact(team) * fact(players-team))
 end
end

def fact(num)
  if num == 0
    return 1
  else 
    return num * fact(num - 1)
  end
end

p team(24,6)
