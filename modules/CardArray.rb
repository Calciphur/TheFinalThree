module CardArray

  def CardArray.split_shuffle a
    a.values_at(* a.each_index.select {|i| i.odd?})
  end

end
