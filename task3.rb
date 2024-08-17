class WorldCountries
  attr_accessor :countries_capitals

  def initialize(countries_capitals)
    @countries_capitals = countries_capitals
  end

  def show_countries_capitals
    i=0
    countries_capitals.each do |key, value|
      i += 1
      puts "#{i}. Contry: #{key}, Capital : #{value}"
    end
  end

  def show_countries
    i=0
    countries_capitals.keys.each do |county|
      i += 1
      puts "#{i}. Contry: #{county}"
    end
  end

  def get_country_inpuut
    puts "Please enter a contry name : "
    county = gets.chomp
    
    puts "You entered : #{county}"
  end

end
countries_capitals = {
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
worldCountries = WorldCountries.new(countries_capitals)
# worldCountries.show_countries_capitals
# worldCountries.show_countries
worldCountries.get_country_inpuut
