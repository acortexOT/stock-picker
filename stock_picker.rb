# stock_picker.rb
#find best difference between items with lowest number first
  
def stock_picker(stock_array)
  differences_array = []  #array to hold highest difference for each item
  stock_array.each do |item|
    working_array = stock_array.slice(stock_array.index(item)..-1)  #reduce array of active item and everything after it
      max = working_array.reduce do |acc, day|
        acc = acc > day ? acc : day 
      end
    differences_array.push(max - item)  #log best difference for each item
  end
  best_difference = differences_array.max #select best difference from all items
  min_index = differences_array.index(best_difference)
  max_index = stock_array.index(best_difference + stock_array[min_index])
  p return_array = [min_index, max_index]
end
stock_picker([15,55,5,14,3,8,31,5,56,1])


