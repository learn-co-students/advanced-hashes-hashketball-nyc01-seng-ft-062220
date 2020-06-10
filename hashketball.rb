# Write your code below game_hash
require "pry"
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
def num_points_scored(name)
  
  game_hash.each do |fk,fv|
    fv.each do |sk,sv|
  if sk == :players
     sv.each do  |tk|
       tk.each do |fk,fv|
       
         if fv == name
          tk.each do |fk,fv|
          if fk == :points
             #binding.pry
            return fv
                 end
              end
          end
         end
       end
    end   
     end 
   end
end  

def shoe_size(name)
  game_hash.each do |fk,fv|
    fv.each do |sk,sv|
  if sk == :players
     sv.each do  |tk|
       tk.each do |fk,fv|
       
         if fv == name
          tk.each do |fk,fv|
          if fk == :shoe
             #binding.pry
            return fv
                 end
              end
          end
         end
       end
    end   
     end 
   end
end  
# def team_colors(team_name)
#   game_hash.each do |fk,fv|
#     fv.each do |sk,sv|
#     # binding.pry
#   if sk == :team_name 
#     if sv = team_name
#       fv.each do |sk,sv|
#         if sk == :colors
#           return sv
      
#         end
#       end
#     end
#     end
#     end
#   end  
# end
      
  def team_colors(team_name)
    
  if  game_hash[:home][:team_name] == team_name 
    return game_hash[:home][:colors]
  else  
   
     return game_hash[:away][:colors]
     
   end
    
end   

 def  team_names 
# total = 0
   new_arry = []
   game_hash.each do |fk,fv|
     
     fv.each do |sk,sv|
     
      if sk == :team_name
         #if sv == "Brooklyn Nets" || "Charlotte Hornets"
         
                 new_arry << sv
        
        end
        end
        
      end 
     
      new_arry.sort
    
      end
      
 def  player_numbers(team_name)
   
   brooklyn_nmb = []
   charlotte_nmb = []
    game_hash.each do |fk,fv|
     fv.each do |sk,sv|
    # binding.pry
    if sk == :team_name 
    if sv == "Brooklyn Nets"
      fv.each do |sk,sv|
        if  sk == :players
        sv.each do  |tk|
       tk.each do |fk,fv|
       if :number ==  fk
         
           brooklyn_nmb << fv
           
         
             end
        end
      end
    end
  end

    else
       fv.each do |sk,sv|
        if  sk == :players
        sv.each do  |tk|
       tk.each do |fk,fv|
       if :number ==  fk
        charlotte_nmb << fv  
      end
    end
  end
end
end
end
   
 end
 
 
 end
end 
if team_name == "Brooklyn Nets"
 return brooklyn_nmb.sort
 else
   return charlotte_nmb.sort
 end
end  

# def player_stats(name)
#   new_hash = {}  
#   new_arry = []
#     game_hash.each do |fk,fv|
#     fv.each do |sk,sv|
#     # binding.pry
#     if sk == :players 
                     
#         sv.each do  |tk|
          
#       tk.each do |fok,fov|
#         # binding.pry
#         if fok == :player_name
           
#           if fov == name
           
#           #fv.each do |sk,sv| 
               
#         #sv.each do  |tk|  
           
#           #tk.each do |fk,fv|
#           tk.each do |fok,fov|
         
#             new_hash = sv
           
#         # binding.pry 
          
#       # end
              
#         end    
#       end    
#         end
#     end
#     #return new_hash
#   end
# end
# end
 
# end
# #new_arry << new_hash

# #return  new_hash

# end  
 def player_stats(name)
   player_stats ={}
   game_hash.each do |fk,fv|
    fv.each do |sk,sv|
    if sk == :players 
                     
        sv.each do  |tk|
          
       tk.each do |fok,fov| 
         if fov == name
        player_stats = tk   
      
   end
    end
  end
end
end
end
#binding.pry
return player_stats
end   

     
 def  big_shoe_rebounds 
   
   new_arry = []
   game_hash.each do |fk,fv|
    fv.each do |sk,sv|
    if sk == :players 
                     
        sv.each do  |tk|
          
       tk.each do |fok,fov| 
         if fok == :shoe
           
           new_arry << fov
           
           end
       end
    end
   end
  end
end
max_shoesize = new_arry.max
  game_hash.each do |fk,fv|
    fv.each do |sk,sv|
    if sk == :players 
                     
        sv.each do  |tk|
          
       tk.each do |fok,fov| 
         if fok == :shoe 
         if  fov == max_shoesize
          tk.each do |fok,fov| 
            
           if fok == :rebounds
             return fov
           end
        end
         end
       end
   end 
    end
 
   end         
 end
 end
end
         
         
      
      
  