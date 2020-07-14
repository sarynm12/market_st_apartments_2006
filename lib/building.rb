class Building
  attr_reader :units, :renters, :rented_units

  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renter(renter)
    @renters << renter.name
  end

  def average_rent
    total = @units.sum do |unit|
      unit.monthly_rent.to_f
    end
    (total / @units.count)
  end

  def renter_with_highest_rent
    result = @units.max_by do |unit|
      unit.monthly_rent
    end
    result.renter 
  end

end
