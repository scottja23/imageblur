class Image
    def initialize (image_array)
        @image = image_array
    end
    
    def output_image
        @image.each do |arrays|
            puts arrays.join
        end
    end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image