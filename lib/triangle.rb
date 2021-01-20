require 'pry'

class Triangle

  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1, @s2, @s3 = s1, s2, s3
  end

  def kind
    if !is_valid
      raise TriangleError
    elsif @s1 == @s2 && @s2 == @s3
      :equilateral
    elsif @s2 == @s3 || @s1 == @s3 || @s1 == @s2
      :isosceles
    else
      :scalene
    end
  end

  def is_valid
    test1 = @s1 > 0 && @s2 > 0 && @s3 > 0
    test1 && (@s1 + @s2 > @s3 && @s2 + @s3 > @s1 && @s1 + @s3 > @s2)
  end

  class TriangleError < StandardError

  end
end

tri1 = Triangle.new(3, 4, 7)
puts tri1.is_valid

# def is_valid(s1, s2, s3)
#   test1 = s1 > 0 && s2 > 0 && s3 > 0
#   test1 && (s1 + s2 > s3 && s2 + s3 > s1 && s1 + s3 > s2)
# end

# puts is_valid(3, 4, 5)