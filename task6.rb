class WorldCountries
  attr_accessor :input_county
  def initialize
    @countries_capitals = {
      "United States": "Washington, D.C.",
      "Canada": "Ottawa",
      "United Kingdom": "London",
      "France": "Paris",
      "Germany": "Berlin",
      "Italy": "Rome",
      "Japan": "Tokyo",
      "Australia": "Canberra",
      "Thailand": "Bangkok",
      "India": "New Delhi"
    } 
    @input_county = input_county
  end
  def show_countries_capitals
    i=0
    @countries_capitals.each do |key, value|
      i += 1
      puts "#{i}. Country: #{key}, Capital : #{value}"
    end
  end
  def show_countries
    i=0
    @countries_capitals.keys.each do |county|
      i += 1
      puts "#{i}. Country: #{county}"
    end
  end
  def get_country_input
    puts "Please enter a contry name (or type 'exit' to quit) : "
    input_county = gets.chomp
    return input_county
  end
  def lookup_countries(input_county)
    found = false
    for country in @countries_capitals.keys
      if country.to_s.downcase == input_county.downcase
        puts "The capital of #{country} is #{@countries_capitals[country]}."
        found = true
        break
      end
    end
    unless found
      puts "Sorry, #{input_county} is not in the list."
    end
  end
end

worldCountries = WorldCountries.new()

while true
  country = worldCountries.get_country_input
  break if country.downcase == 'exit'
  worldCountries.lookup_countries(country)
end

puts "Thank you!"
