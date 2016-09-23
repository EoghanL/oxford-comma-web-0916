def oxford_comma(array)
  fin_str = String.new
  while(array.length > 3)
    fin_str += "#{array.shift}, "
  end
  if(array.length == 3)
    fin_str += "#{array.shift}, "
    fin_str += array.join(", and ")
    array.shift(2)
    fin_str
  end
  fin_str += array.join(" and ") if array.length == 2
  fin_str = array[0] if array.length == 1
  fin_str
end
