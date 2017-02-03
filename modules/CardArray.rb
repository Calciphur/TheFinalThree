module CardArray

  def CardArray.split_shuffle a
    a.values_at(* a.each_index.select {|i| i.odd?})
  end

  def CardArray.count_remainder a
    until a.size <= 3 do
      a = CardArray.split_shuffle a
      a = a.reverse
    end
    return a.size
  end

end
