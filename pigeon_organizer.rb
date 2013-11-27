  ########################
# NYC PIGEON ORGANIZER #
########################
 
# Start with the following collected data on NYC pigeons.
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

require 'debugger'

pigeon_data = 
    {:color => {:purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {:male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {"Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

new_hash = {}
pigeon_data.each do |key, value|
  # {:color => {:purple => ["Theo", "Peter Jr.", "Lucky"],
  #   :grey => ["Theo", "Peter Jr.", "Ms .K"],
  #   :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
  #   :brown => ["Queenie", "Alex"]
  # } key will either be, color, gender, or lives
  value.each do |attribute, names|
  # {:purple => ["Theo", "Peter Jr.", "Lucky"]
  names.each do |name|
  # debugger
  if new_hash[name].nil?
    new_hash[name] = {}
  end
  if new_hash[name][:color].nil?
    new_hash[name][:color] = []
  end
  # this will happen for colors, genders and lives
  # debugger
  # theres something thats true or false here, and we only want to put something in our colors array, when that thing is true
  if key == :color  
    new_hash[name][:color] << attribute 
  end
  if key == :gender
    new_hash[name][:gender] = attribute
  end
  if key == :lives
    new_hash[name][:lives] = attribute
  end
 end
end
new_hash
end
puts new_hash