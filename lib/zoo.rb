class Zoo

  attr_accessor :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages =  []
    10.times do
      @cages << Cage.new
    end
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    (@season_opening_date <= date) && (@season_closing_date >= date)
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        @cages << animal
        break #stopped! still trying!
      end
    end
  end
end
