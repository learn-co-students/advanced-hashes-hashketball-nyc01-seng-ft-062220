# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
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
          shoe: 17,
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
          shoe: 19,
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

# Write code here
def num_points_scored(player_name)
  points_scored = 0
  game_hash.each do |location, key|
    key.each do |players, details|
      if players == :players
        details.each do |player_name_detail|
          if player_name == player_name_detail[:player_name]
            points_scored = (player_name_detail[:points])
end
end
end
end
end
points_scored
end

def shoe_size(player)
  size = 0
  game_hash.each do |location, key_hash|
    key_hash.each do |players, detail|
      if players == :players
        detail.each do |player_name_detail|
          if player == player_name_detail[:player_name]
            size = (player_name_detail[:shoe])
          end
       end
    end
  end
end
   size
end



def team_colors(team_name)
  if game_hash[:home][:team_name] == team_name
    return game_hash[:home][:colors]
  end
   game_hash[:away][:colors]
end




def team_names
  [game_hash[:away][:team_name], game_hash[:home][:team_name]]
end



def player_numbers(team_name)
   numbers=[]
    if game_hash[:home][:team_name] == team_name
      game_hash[:home][:players].each  {|x|
        numbers << x[:number]
      }
      return numbers
    end
     game_hash[:away][:team_name] == team_name
      game_hash[:away][:players].each {|x|
        numbers << x[:number]
      }
     numbers
  end




def player_stats(player)
stats = {}
  game_hash.each do |location, key_hash|
    key_hash.each do |players, detail|
      if players == :players
        detail.each do |player_name_detail|
          if player == player_name_detail[:player_name]
            stats = player_name_detail
          end
       end
    end
  end
end
   stats
end


def big_shoe_rebounds
shoe = 0
rebound = 0
  game_hash.each do |location, key_hash|
    key_hash.each do |players, detail|
       if players == :players
        detail.each do |player_name_detail|
          if shoe < player_name_detail[:shoe]
            shoe = player_name_detail[:shoe]
            rebound = player_name_detail[:rebounds]
          end
        end
      end
    end
  end
  rebound
end
