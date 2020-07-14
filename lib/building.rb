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

  def units_by_number_of_bedrooms
    result = Hash.new { |hash, key| hash[key] = []}
    @units.each do |unit|
      result[unit.bedrooms] << unit.number
    end
    result
  end

  def annual_breakdown
    result = Hash.new { |hash, key| hash[key] = []}
    @units.each do |unit|
      @renters.each do |renter|
        result[renter.name] << unit.monthly_rent
      end
    end
    result
  end

end
