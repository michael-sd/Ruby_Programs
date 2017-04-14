require 'pry'

class Image

  def initialize (pixels)      
    @pixels = pixels
  end


  def output_image
    @pixels.each do |pixel|
      puts pixel.join
    end
  end

  def find_ones
    ones = []                                      
    @pixels.each_with_index do |row, row_num|         
      row.each_with_index do |num, column_num|      
        ones << [row_num, column_num] if num == 1  ###########
      end
    end                         
    ones                       
  end

  def blur_once
    puts "blur once occurred"                   
    find_ones.each do |point|                    
      adjacent_point(point[0]-1, point[1], point[0]>0)
      adjacent_point(point[0]+1, point[1], point[0]<pic_width)
      adjacent_point(point[0], point[1]-1, point[1]>0)
      adjacent_point(point[0], point[1]+1, point[1]<@pixels[point[0]].length-1)
    end
  end

  def adjacent_point(row, column, condition)
    @pixels[row][column] = 1 if condition
  end

  def pic_width
    pic_width = @pixels.length-1                    
  end


  def blur(distance)   #Method utilising recursion
    puts distance
    @image = Image.new(@pixels)
    return @image if distance <= 0 
    @image.blur_once
    @image.blur(distance - 1)
  end


  #def blur(image, distance)
  #if @image.any?
    #if (distance == 0)
      #@image.blur_once
    #elsif (distance >= 1)
      #@image.blur_once + (@image.blur_once(distance-1))
      #end
    #end
  #end

end

image = Image.new([
    [0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0],
    [0,0,0,1,0,0,0],
    [0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0]
  ])
image.output_image
puts
image.blur(2)
puts
image.output_image  


#Notes:
#start with 0
#funcation called blur - take image, and take a number
#if 0 return blurred image
#if >1 blur image again by dist of 1
#call blur again passing image blurred by one and number -1

#Higher order functions >> recursion
