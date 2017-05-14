class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def valid?
    @a > 0 && @b > 0 && @c > 0 && @a + @b > @c && @a + @c > @b && @b + @c > @a
  end

  def kind
    if !valid?
      begin
        raise TriangleError
      end
    elsif [@a, @b, @c].uniq.count == 1
      :equilateral
    elsif [@a, @b, @c].uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
