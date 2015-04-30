require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
      @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock bike
    fail 'Docking Station full' if full?
    @bikes << bike
  end

  private

  attr_reader :bikes


  def full?
    bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    bikes.empty?
  end
  


end
