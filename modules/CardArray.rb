module CardArray

  def CardArray.split_shuffle a
    a.values_at(* a.each_index.select {|i| i.odd?})
  end

  def CardArray.count_remainder a
    arr = (1..a).to_a
    until arr.size <= 3 do
      arr = CardArray.split_shuffle arr
      arr = arr.reverse
    end
    return arr.size
  end

end
