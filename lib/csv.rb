require 'csv'

  #
  #
  # CSV.foreach("data/game_teams_stats.csv", headers: true, header_converters: :symbol) do |row|
  #   head_coach = row[:head_coach]
  #
  # end
    #

    arr = CSV.read("data/game_teams_stats.csv", headers: true, header_converters: :symbol)
      puts arr[0]
      p arr[:head_coach]
