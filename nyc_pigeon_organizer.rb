require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |description_symbol, color_hash|
    color_hash.each do |color_symbol, names_array|
      names_array.each do |name|
        
        pigeon_list[name] ||= {}
        pigeon_list[name][description_symbol] ||= []
        # binding.pry
        pigeon_list[name][description_symbol] << color_symbol.to_s
          
      end 
    end  
  end 
  
  pigeon_list
end


{:color=>
  {:purple=>["Theo", "Peter Jr.", "Lucky"],
   :grey=>["Theo", "Peter Jr.", "Ms. K"],
   :white=>["Queenie", "Andrew", "Ms. K", "Alex"],
   :brown=>["Queenie", "Alex"]},
 :gender=>
  {:male=>["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
   :female=>["Queenie", "Ms. K"]},
 :lives=>
  {"Subway"=>["Theo", "Queenie"],
   "Central Park"=>["Alex", "Ms. K", "Lucky"],
   "Library"=>["Peter Jr."],
   "City Hall"=>["Andrew"]}}