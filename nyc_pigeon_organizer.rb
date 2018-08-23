def nyc_pigeon_organizer(data)
  new_data = {}
  pigeon_names = data[:gender].values.flatten.dup
  pigeon_names.each do |name|
    new_data[name] = {
      :color => [],
      :gender => [],
      :lives => []
    }
  end 
  
  data.each do |attribute, attr_values|
    attr_values.each do |attr_value, names|
      names.each do |name|
        new_data[name][attribute] << attr_value.to_s 
      end 
    end 
  end 
  
  new_data
end