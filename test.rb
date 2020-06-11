def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      key: ["as", "dss"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        # {hello: "world"},
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 19,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 9,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


# def team_colors(team_name)
#   game_hash.each do | location, team_data |
#     puts "game_hash_counter"
#     team_data.each do |idk|
#       puts "team_data_counter"
#       puts idk
#     #if team_data[:team_name] == team_name
#       #return team_data[:colors]
#   #  end
#   end
# end
# end
# puts team_colors("Brooklyn Nets")
#
# def calc_add(n)
#   1 + n
# end
# puts calc_add("s")
#

# r1 = [[1, 2], [3,4,5] ]
  
# # p r1[2][1]

# p r1[0]
# p r1[1]

# r1.each do | i |
#   puts "value of first index #{i}"
# i.each do | fr |
#   puts "value of second index #{fr}"
#   end
# end

  
    
def big_shoe_rebounds1
  max = 0
  rebound = 0
  game_hash.each do | location, team |
    team.each do | attribute, data |
      if attribute == :players
       data.each do | player |
          if player[:shoe] > max
            max = player[:shoe]
            rebound = player[:rebounds]
            # puts player[:rebounds]
          end
        end
      end
    end
  end
  p rebound
end


def big_shoe_rebounds
  new_array = []
  game_hash.each do | location, team |
    team.each do | attribute, data |
      if attribute == :players
        data.each do | player |
          new_array << player[:shoe]
            
          
        end
      end
    end
  end
  max_index = new_array.find_index(new_array.max)
  #puts game_hash[:home][:players][max_index][:rebounds]
  game_hash.each do | location, team |
   puts team[:players][max_index][:rebounds]
  end
end
big_shoe_rebounds