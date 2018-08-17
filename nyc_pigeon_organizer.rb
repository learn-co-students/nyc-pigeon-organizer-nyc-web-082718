def nyc_pigeon_organizer(data)
  new_pigeon_data = {}
  names = []
 data.each do |cgl,pigeon_info|
    pigeon_info.each do |key,names_array|
      names_array.each do |name|
        if not names.include?(name)
          names << name
        end
      end
    end
  end
  
  names.each do |name|
    new_pigeon_data[name] = {
      :color => [],
      :gender => [],
      :lives => []
    }
  end
  
  new_pigeon_data.each do |name,info|
    data.each do |cgl,pigeon_info|
      pigeon_info.each do |stat,pigeons|
        if pigeons.include?(name)
          info[cgl] << stat.to_s
        end
      end
    end
  end
  return new_pigeon_data
end