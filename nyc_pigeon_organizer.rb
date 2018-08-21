require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:gender].each do |key, data|
    data.each do |name|
      pigeon_list[name] = {}
    end
  end

  data.each do |key, data|
    pigeon_list.each do |name, listHash|
      pigeon_list[name][key] = []
    end
  end

  data.each do |key, data|
    data.each do |color, names|
      names.each do |name|
        pigeon_list[name][key] << color.to_s
      end
    end
  end
  
  return pigeon_list
end