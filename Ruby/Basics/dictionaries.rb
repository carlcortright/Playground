# YEESSSS
myinfo = { "name" => "carl",
  "last_name" => "cortwrong",
  "age" => 21, 
  "location" => "Boulder", 
  "hobbies" => ["skiing", "programming", "hackathons"]}

puts myinfo["hobbies"]

# Loop through my info
myinfo.each do |key, value|
  puts "#{key} => #{value}"
end

last_name = myinfo["last_name"]
if !last_name
  # Will be nil, and print this
  puts "Sorry, no last name in this dictionary"
end

# Assigns if nil - this is cool
last_name ||= "cortright"
puts last_name