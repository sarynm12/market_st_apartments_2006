class Building
  attr_reader :units, :renters

  def initialize
    @units = []
    @renters = []
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

end
