def nyc_pigeon_organizer(data)
  new_hash = {}

   data.each do |attributes, options|
     options.each do |option, names|
       names.each do |name|
         new_hash[name] ||= {}
         new_hash[name][attributes] ||= []
         new_hash[name][attributes] << option.to_s
       end
     end
   end
   new_hash
end
