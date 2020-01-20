class SportsTeam
  # attr_reader :team_name, :team_members, :coach
  # attr_writer :team_name, :team_members, :coach
  attr_accessor:team_name, :team_members, :coach, :points

  def initialize(team_name, team_members, coach, points)
    @team_name = team_name
    @team_members = team_members
    @coach = coach
    @points = points
  end

#add new player to team_members array
  def add_player(new_player)
    @team_members.push(new_player)
  end

def find_players(player)
  @team_members.include?(player)
end

def points_update(won_or_lost)
  if won_or_lost == "won"
    @points += 3
  else
    return points
end
end


# def team_name
#   return @team_name
# end
#
# def team_members
#   return @team_members
# end
#
# def coach
#   return @coach
# end
#
# def update_coach(new_coach)
#    @coach = new_coach
#   end
end
