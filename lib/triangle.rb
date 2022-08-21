class Triangle
  # write code here

  attr_accessor :lenth, :width, :height

  def initialize(lenth, width, height)
    @lenth = lenth
    @width = width
    @height = height
  end

  def kind
    if @lenth <= 0 || @width <= 0 || @height <= 0
      raise TriangleError
    elsif @lenth + @width <= @height || @lenth + @height <= @width || @width + @height <= @lenth
      raise TriangleError
    elsif @lenth == @width && @width == @height
      :equilateral
    elsif @lenth == @width || @width == @height || @lenth == @height
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError
    def message
      "Triangle Error"
    end
  end
end