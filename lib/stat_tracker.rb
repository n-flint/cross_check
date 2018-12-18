require 'csv'
require './lib/game'

class StatTracker
  attr_reader :game
  #
  # def initialize
  #   @game = Game.new('./data/game_sample.csv')
  # end

  def self.from_csv
    stat_tracker = StatTracker.new
  end


  def highest_total_score(location)
    total_score = []
    CSV.foreach(location, headers: true, header_converters: :symbol) do |row|
      # binding.pry
        total_score << row[:away_goals].to_i + row[:home_goals].to_i
      end
    total_score.max
  end


end
