require 'csv'

class Game

  def initialize(location)
    load_game_teams_stats(location)
  end

  def load_game_teams_stats(location)
    CSV.read(location, headers: true, header_converters: :symbol)
  end

end
