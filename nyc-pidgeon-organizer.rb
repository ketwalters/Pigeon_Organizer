########################
# NYC PIGEON ORGANIZER #
########################

# Start with the following collected data on NYC pigeons.

pigeon_data = {
  :color => {:purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }

new_pigeon = {}
pigeon_data.each_pair do |key, value|
  # keys color, gender, lives
  # value => {
  #   :purple => ["Theo", "Peter Jr.", "Lucky"],
  #   :grey => ["Theo", "Peter Jr.", "Ms .K"],
  #   :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
  #   :brown => ["Queenie", "Alex"]
  # }
  value.each_pair do |attribute, name_array|
    # attribute => purple, grey
    # name array => ["Theo", "Peter Jr.", "Lucky"]
    name_array.each do |name|
      # "theo"
      if new_pigeon[name].nil?
        new_pigeon[name] = {}
      end
      # new_pigeon = {"theo" => {:color => []}}
      if new_pigeon[name][:color].nil?
        new_pigeon[name][:color] = []
      end
      if key == :color
        new_pigeon[name][key] << attribute
      else
        # name => "theo", "key" => gender or lives, "attribute" => "male", female, subway
        new_pigeon[name][key] = attribute
      end
    end
  end
end
puts new_pigeon