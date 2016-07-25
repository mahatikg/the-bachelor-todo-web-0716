require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_number, contestants_array|
    if season_number == season
      contestants_array.each do |info|
        if info["status"] == "Winner"
          winner = info["name"]
          return winner.split('join')
          end
        end
      end
    end
end

def get_contestant_name(data, occupation)
  # code here
data.each do |season_number, contestants_array|
    contestants_array.each do |info|
      if info["occupation"] == occupation
        contestant_name = info["name"]
        return contestant_name.split(' ')
        end
      end
    end
  end


def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
 data.each do |season_number, contestants_array|
   contestants_array.each do |info|
     if info["hometown"] == hometown
       count += 1
        end
      end
    end
    return count
end



def get_occupation(data, hometown)
  # code here
  data.each do |season_number, contestants_array|
    contestants_array.each do |info|
        if info["hometown"] == hometown
            hometown_occupation = info["occupation"]
            return hometown_occupation
        end
      end
    end
  end


def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  count = 0
  data.each do |season_number, contestants_array|
    if season == season_number
      contestants_array.each do |info|
        count += 1
        total_age += info["age"].to_i
        total_age.to_i
        end
      end
    end
    ages_total = total_age.to_f
    return (ages_total / count).round
  end
