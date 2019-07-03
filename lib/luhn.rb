module Luhn
  def self.is_valid?(number)

    nums = number.to_s.reverse
    nums = nums.split("")
    sum = 0
    nums.each_with_index do |n, i|
      if i.odd?
        if n.to_i * 2 > 9
          sum += n.to_i * 2 - 9
        else
          sum += n.to_i * 2
        end
      else
        sum += n.to_i
      end
    end

    if (sum % 10) == 0
      return true
    else
      return false
    end
  end
end