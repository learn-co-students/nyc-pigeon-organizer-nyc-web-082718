require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute, hash|
    hash.each do |color_gender_loc, names_arr|
      names_arr.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end

        if !pigeon_list[name].has_key?(attribute)
          pigeon_list[name][attribute] = []
        end
        if !pigeon_list[name][attribute].include?(color_gender_loc)
          pigeon_list[name][attribute] << color_gender_loc.to_s
        end
      end
    end
  end

  pigeon_list
end
