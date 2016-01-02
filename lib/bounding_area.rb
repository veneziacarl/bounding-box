require_relative 'bounding_box'
require 'pry'

class BoundingArea
  attr_reader :area

  def initialize(area)
    @area = area
  end

  def boxes_contain_point?(x, y)
    outcome = false

    area.each do |box|
      outcome = outcome || box.contains_point?(x, y)
    end

    outcome
  end

end
