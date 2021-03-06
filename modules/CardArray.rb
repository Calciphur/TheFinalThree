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

  def CardArray.find_safe_positions deck_count
    arr = (1..deck_count).to_a
    until arr.size <= 3 do
      arr = CardArray.split_shuffle arr
      arr = arr.reverse
    end
    return arr.sort
  end

  def CardArray.sort_remainders up_to
    rem2 = Array.new
    rem3 = Array.new
    rems = [rem2, rem3]

    (1..up_to).each do |i|
      remainder = CardArray.count_remainder i
      case remainder
      when 2
        rem2.push(i)
      when 3
        rem3.push(i)
      end
    end
    return rems
  end

end
