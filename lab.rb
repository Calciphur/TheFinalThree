require 'csv'
require './modules/CardArray'
require './modules/BaseMath'

class Lab

  attr_reader :rows, :table, :fields, :headers

  def initialize
    @headers = ["Base-10 Value", "Remainder", "Base-4 Value"]
  end

  def create_data num_sets
    #make sure num_sets is an integer
    if num_sets.is_a? Integer
      CSV.open("./files/data.csv", "wb") do |csv|
        (0..num_sets).each do |i|

          #pass the headers list as the first line in the file
          if i == 0
            csv << @headers
          end
          #then pass the actual data
          row = Array.new
          remainder = CardArray.count_remainder i
          base_four_num = BaseMath.to_quat i
          @fields = [i, remainder, base_four_num]
          csv << @fields

        end
      end
    else raise ArgumentError, "Unsupported type for num_sets"
    end
  end

end
