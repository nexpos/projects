class CountryController < ApplicationController
  def all_states
    @states = State.all
  end

  def top_five_pop
    @pop = State.group(:population).having("min(population) > 4000000")
  end

  def top_five_area
    @area = State.first(5)
  end
end
