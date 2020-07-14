require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'

class ApartmentTest < Minitest::Test

  def test_it_exists
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_instance_of Apartment, unit1
  end

end



# ## Iteration 1
#
# Use TDD to create a Renter class and an Apartment class that respond to the following interaction pattern:
#
# ```ruby
# pry(main)> require './lib/renter'
# # => true
#
# pry(main)> require './lib/apartment'
# # => true
#
# # => #<Renter:0x00007a15c93af80...>
#
# pry(main)> renter1.name
# # => "Jessie"
#
# # => #<Apartment:0x00007fb3ecaae7c0...>
#
# pry(main)> unit1.number
# # => "A1"
#
# pry(main)> unit1.monthly_rent
# # => 1200
#
# pry(main)> unit1.bathrooms
# # => 1
#
# pry(main)> unit1.bedrooms
# # => 1
#
# pry(main)> unit1.renter
# # => nil
#
# pry(main)> unit1.add_renter(renter1)
#
# pry(main)> unit1.renter
# # => #<Renter:0x00007fb3ee106ce8...>
# ```
