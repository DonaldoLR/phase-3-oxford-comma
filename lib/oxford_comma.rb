# My Solution, unnecessary complicated
def oxford_comma(array)
  return_array = []
  array_size = array.size 
  case array_size
  when 0..1
    return_array.push(array[0])
  when 2
    return_array.push("#{array[0]} and #{array[1]}")
  else
    array.each_with_index.map do |element, idx|
      if idx === array.size - 1
        return_array.push("and #{element}") 
      else 
        return_array.push(element)
      end
    end
  end
  return_array.join(', ')
end

# SOLUTION (pasted after passing tests)
# def oxford_comma(array)
#   if array.length == 2
#     return "#{array[0]} and #{array[1]}"
#   elsif 2 < array.length
#     array[-1].insert(0, "and ")
#   end
#   array.join(", ")    
# end