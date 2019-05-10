def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant['status'] == 'Winner'
      return contestant["name"].split(' ').first
    end
end
=begin  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestant|
        if contestant['status'] == 'Winner'
          return contestant["name"].split(' ')[0]
        end
      end
    end
=end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, info|
    info.each do |contestant|
      if contestant['occupation'] == occupation
        return contestant['name']
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, info|
    info.each do |contestant|
      if contestant['hometown'] == hometown
        count += 1
      end
    end
  end
  count                                             #return a counter of the number of contestants who are from that hometown
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each do |contestant|
      if contestant['hometown'] == hometown
        return contestant['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0                                       #set initial age to 0
  data[season].each do |contestant|                     #loop through data & season, 
    total_age += contestant['age'].to_i                 #to_i is a method which help us to convert value from different data like string, float into int. This is also called typecasting of values.
  end
  average = total_age.to_f/data[season].length
  average.round
end
