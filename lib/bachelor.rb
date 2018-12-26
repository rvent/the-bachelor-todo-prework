def get_first_name_of_season_winner(data, season)
  # code here
  season_contestants = data[season]
  winner = season_contestants.select {|contestant| contestant["status"] == "Winner"}
  winner_name = winner[0]["name"].split(" ")
  winner_name[0]
end

def get_contestant_name(data, occupation)
  # code here
  all_contestants = data.values.flatten
  occupation_holder = all_contestants.select {|contestant| contestant["occupation"] == occupation}
  occupation_holder[0]["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  all_contestants = data.values.flatten
  hometown_contestants = all_contestants.select {|contestant| contestant["hometown"] == hometown}
  hometown_count = hometown_contestants.length
end

def get_occupation(data, hometown)
  # code here
  all_contestants = data.values.flatten
  first_find = all_contestants.find {|contestant| contestant["hometown"] == hometown}
  first_find["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  season_contestants = data[season]
  age_sum = 0
  number_of_contestant = 0
  season_contestants.each do |contestant|
     age_sum += contestant["age"].to_f
     number_of_contestant += 1
   end
   average_age = age_sum / number_of_contestant
   average_age.round
end
