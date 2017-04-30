class Image

  def initialize (image)
    @data = data
  end


  def output_image
         @data.each do |pixel|
      puts pixel.join
    end
  end


  def find_ones
    ones = []
    @data.each_with_index do |row, row_num|
      row.each_with_index do |num, column_num|


        if num == 1
          ones << [row_num, column_num]
        end
      end
    end
    ones
  end

  def blur
    ones = []
    @data.each_with_index do |row, row_num|
      row.each_with_index do |num, column_num|
          if num ==1
            ones << [row_num, column_num]
          end
        end
      end
          ones.each do |point|
            row_num = point[0]
            column_num = point[1]

            @data[row_num - 1][column_num] = 1 if row_num > 0
            @data[row_num + 1][column_num] = 1 if row_num < @data.length - 1
            @data[row_num][column_num - 1] = 1 if column_num > 0
            @data[row_num][column_num + 1] = 1 if column_num < @data[row_num].length - 1
          end

  end
end
