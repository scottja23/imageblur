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

def blur_image
  @image.each_with_index do |r, a|
    r.each_with_index do |c, b|
      case

      when find_ones.include?([a, b])
      then 
            @image[a-1][b] = 1 

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

image.blur_image
image.output_image