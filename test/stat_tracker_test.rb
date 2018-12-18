require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/stat_tracker'


class StatTrackerTest < MiniTest::Test

  game_sample_path = './data/game_sample.csv'
  team_sample_path = './data/team_info_sample.csv'
  game_teams_sample_path = './data/game_teams_sample_stats.csv'

  locations = {
    games: game_sample_path,
    teams: team_sample_path,
    game_teams: game_teams_sample_path
  }

  # def test_it_exists
  #   game_sample_path = './data/game_sample.csv'
  #   stat_tracker = StatTracker.from_csv(game_sample_path)
  #
  #   assert_instance_of StatTracker, stat_tracker
  # end

  def test_it_can_access_the_highest_total_score
      game_sample_path = './data/game_sample.csv'
      stat_tracker = StatTracker.from_csv
      # binding.pry
      assert_equal 7, stat_tracker.highest_total_score(game_sample_path)
  end





end
