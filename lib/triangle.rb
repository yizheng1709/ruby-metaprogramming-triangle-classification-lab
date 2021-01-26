class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(one, two, three)
    @length_one = one 
    @length_two = two 
    @length_three = three 
  end 

  def kind 
    if @length_three <= 0 || @length_two <= 0 || @length_two <= 0 ||
      @length_one + @length_two <= @length_three ||
      @length_two + @length_three <= @length_one ||
      @length_one + @length_three <= @length_two
      raise TriangleError
    else 
      if @length_one == @length_two && @length_two == @length_three
        :equilateral
      elsif @length_one == @length_three || @length_one == @length_two || @length_two == @length_three  
    
        :isosceles 
      elsif @length_one != @length_two && @length_two != @length_three 
        :scalene 
      end
    end 
  end 

  class TriangleError < StandardError
  end

end
