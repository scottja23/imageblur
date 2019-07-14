class Image
    def initialize (image)
        @image = image
    end
    
    def output_image
        @image.each do |arrays|
            puts arrays.join
        end
    end

    def blur

      @image.each do |blur|
        case 
        #assuming image will be in 4 rows and 4 columns 
        #first row
        when @image[0][0] == 0 && @image[0][1] == 1 || @image[1][0] == 1 then @image[0][0] = 1
        when @image[0][1] == 0 && @image[0][0] == 1 || @image[0][2] == 1 || @image[1][1] == 1 then @image[0][1] = 1
        when @image[0][2] == 0 && @image[0][1] == 1 || @image[0][3] == 1 || @image[1][2] == 1 then @image[0][2] = 1 
        when @image[0][3] == 0 && @image[0][2] == 1 || @image[1][3] == 1 then @image[0][3] = 1

        #second row
        when @image[1][0] == 0 && @image[0][0] == 1 || @image[1][1] == 1 || @image[2][0] == 1 then @image[1][0] = 1
        when @image[1][1] == 0 && @image[0][1] == 1 || @image[1][0] == 1 || @image[1][2] == 1 || @image[2][1] == 1 then @image[1][1] = 1
        when @image[1][2] == 0 && @image[0][2] == 1 || @image[1][1] == 1 || @image[1][3] == 1 || @image[2][2] == 1 then @image[1][2] = 1
        when @image[1][3] == 0 && @image[0][3] == 1 || @image[1][2] == 1 || @image[2][3] == 1 then @image[1][3] = 1

        end
        puts blur.join
      end
    end
        
end



image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.blur 