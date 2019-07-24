class Image
  def initialize (image)
    @image = image
  end

  def output_image
    @image.each do |rows|
      puts rows.join
    end
  end

def find_ones
  ones = []
  
  @image.each_with_index do |r, a|
    r.each_with_index do |c, b|
      if c == 1
        ones << [a, b]
      end
    end
  end
  ones
end

def blur(distance)      # defines method and intakes a number
  distance.times do     # loops through blur_image! a specified number of times
    blur_image!
  end
end

def blur_image!
  ones = find_ones
  @image.each_with_index do |r, a|
   
    r.each_with_index do |c, b|


      ones.each do |row, col|
        if a == row and b == col
           @image[a-1][b] = 1 unless a == 0
           @image[a+1][b] = 1 unless a >= @image.length - 1
           @image[a][b-1] = 1 unless b == 0
           @image[a][b+1] = 1 unless b >= @image.length - 1

        end
      end
    end
  end
end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.blur(2)
image.output_image
