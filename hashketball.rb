# Write your code below game_hash
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

puts game_hash[:home][:team_name]


def num_points_scored(player_name)
  points_scored = 0
  game_hash.each do |key, value|
    value[:players].each do |obejcts|
      name = obejcts[:player_name]
      points = obejcts[:points]
            if name == player_name
        points_scored += points
      end
    end
  end
  return points_scored
end

def shoe_size(player_name)
  shoe_size = 0
  game_hash.each do |key, value|
    value[:players].each do |obejcts|
      name = obejcts[:player_name]
      shoe = obejcts[:shoe]
      if name == player_name
        shoe_size += shoe
      end
    end
  end
  return shoe_size
end

def team_colors(team)
  game_hash.each do |key, value|
    value.each do |inner_key, inner_value|
      if inner_value == team
        colors = value[:colors]
        return colors
      end
    end
    end
  return "team not found"
end

def team_names()
  names = []
  game_hash.each do |key, value|
    name = value[:team_name]
    names.push(name)
  end
  return names
end

def player_numbers(team_name)
  game_hash.each do |keys, values|
    if values[:team_name] == team_name
      results = values[:players].map {|item| item[:number]}
      results = results.sort
      return results
    end
  end
end

def player_stats(name)
  game_hash.each do |key, value|
    value[:players].each do |player|
      if player[:player_name] == name
        new_hash = player.delete_if {|stat_key, stat_value| [:player_name].include?(stat_key)}
        new_hash[:player_name] = name
        return new_hash
      end
    end
  end
end

def big_shoe_rebounds()
  rebounds = 0
  bigshoe = 0
  game_hash.each do |locaiton, keys|
    keys[:players].each do |player|
      if player[:shoe] > bigshoe
        bigshoe = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
  return rebounds
end

