class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
   @side1 = side1
   @side2 = side2
   @side3 = side3
  end
  
  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || @side1 + @side2 < @side3 || @side1 + @side3 < @side2 || @side2 + @side3 < @side1
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
     :equilateral
    elsif
     @side1 == @side2 || @side1 == @side3 || @side2 == @side3
     :isosceles
    elsif
     @side1 != @side2 && @side2 != @side3
     :scalene
  end
end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end
end


