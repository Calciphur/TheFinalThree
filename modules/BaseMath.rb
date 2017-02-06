module BaseMath

  def BaseMath.to_quat num
    initial_num = num

    #check to see how large the array needs to be
    j = 0
    until num <= (4**j)-1 do
      j += 1
    end
    if j == 0
      j += 1
    end
    size = j

    quat = Array.new(size, 0)
    i = 0

    if num == 0
      return quat * ""
    end

    until num == 0 do #keep running this until num == 0
      i = 0 #reset i to 0 when we reload this with the new value of num
      while num >= 4**i do #check all values of i in 4**i until we find one that is bigger than num
        i += 1
      end

      #now we know which value of i makes 4**i bigger than the current value of num
      #but what we want to do is subtract the biggest value of 4**i that is still LESS than the current num, so...
      #we check to make sure 4**i isn't EQUAL to num, because then we would want to increment THAT value of i

      if 4**i == num
        num -= 4**(i-1)
        quat[i-1] += 1

      else
        num -= 4**(i-1)
        quat[i-1] += 1
      end

    end
    return quat.reverse * "" #print the array in reverse and formatted as a string.
  end
end
