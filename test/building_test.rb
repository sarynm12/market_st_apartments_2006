require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'

class BuildingTest < Minitest::Test

  def test_it_exists
    building = Building.new
    assert_instance_of Building, building
  end

  def test_it_starts_with_no_units
    building = Building.new
    assert_equal [], building.units 
  end

end



# ## Iteration 2
#
# Use TDD to create a Building class that responds to the following interaction pattern.
#
# ```ruby
# pry(main)> require './lib/renter'
# # => true
#
# pry(main)> require './lib/apartment'
# # => true
#
# pry(main)> require './lib/building'
# # => true
#
# # => #<Building:0x00007f83778c5a80...>
#
# pry(main)> building.units
# # => []
#
# pry(main)> unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
# # => #<Apartment:0x00007f8377209bb0...>
#
# pry(main)> unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
# # => #<Apartment:0x00007f83779f0900...>
#
# pry(main)> building.add_unit(unit1)
#
# pry(main)> building.add_unit(unit2)
#
# pry(main)> building.units
# # => [#<Apartment:0x00007f8377209bb0...>, #<Apartment:0x00007f83779f0900...>]
#
# pry(main)> building.renters
# # => []
#
# pry(main)> renter1 = Renter.new("Aurora")
# # => #<Renter:0x00007fa83bc37978...>
#
# pry(main)> unit1.add_renter(renter1)
#
# pry(main)> building.renters
# # => ["Aurora"]
#
# pry(main)> renter2 = Renter.new("Tim")
# # => #<Renter:0x00007fa83b9b0358...>
#
# pry(main)> unit2.add_renter(renter2)
#
# pry(main)> building.renters
# # => ["Aurora", "Tim"]
#
# pry(main)> building.average_rent
# # => 1099.5
# ```
