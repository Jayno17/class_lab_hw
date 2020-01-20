require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test
def setup
  @team = SportsTeam.new("Code Clan Warriors", ["Luke","Paul","Calum","Noel","Andrew"], "Eugene", 0)
end

def test_team_name
  assert_equal("Code Clan Warriors", @team.team_name)
end

def test_team_members
  assert_equal(["Luke","Paul","Calum","Noel","Andrew"], @team.team_members)
end

def test_coach
  assert_equal("Eugene", @team.coach)
end

def test_update_coach
  @team.coach = "Zsolt"
  assert_equal("Zsolt", @team.coach)
end

def test_update_players
  assert_equal(["Luke","Paul","Calum","Noel","Andrew","Ahmed"], @team.add_player("Ahmed"))
end

def test_find_players
  assert_equal(true, @team.find_players("Paul"))
end

def test_points_update__won
  @team.points_update("won")
  assert_equal(3, @team.points)
end
end
