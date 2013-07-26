def choose_team (people, teams)
  return 0 if people == 0
    return people if teams ==1

    choose_team(people-1,teams-1) + choose_team(people-1,teams)
  end
p choose_team(6,2) == 15
p choose_team(6,3) == 20
p choose_team(24,4)==10626

p choose_team(30,3)
