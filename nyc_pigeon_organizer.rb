def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |[key, value], array|
    value.each do |key_2, names|
      names.each do |name|
        if !array[name]
          array[name] = {}
        end
        if !array[name][key]
          array[name][key] = []
        end
        array[name][key].push(key_2)
      end
    end
    array
  end
end
