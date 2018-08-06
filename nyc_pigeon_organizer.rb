def nyc_pigeon_organizer(data)
    pigeons = {}
    data[:gender].each do |gender, name_array|
        name_array.each do |name|
            pigeons[name] = {
                color: [],
                gender: [gender.to_s],
                lives: []
            }
        end
    end
    data[:lives].each do |home, name_array|
        name_array.each do |name|
            pigeons[name][:lives] << home
        end
    end
    data[:color].each do |color, name_array|
        name_array.each do |name|
            pigeons[name][:color] << color.to_s
        end
    end
    pigeons
end