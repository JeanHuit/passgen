# Generates complexity
class GeneratePasswordComplexity
  # permute value of 1
  def stand
    alpha = ('a'..'z').to_a
    beta = ('A'..'Z').to_a
    alpha.concat(beta)
  end

  # permuter value of 3
  def nums
    ('0'..'9').to_a
  end

  # permute value of 5
  def specs
    ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')']
  end

  # permutation combines selected value
  def permute(totals)
    case totals
    when 4
      stand.concat(nums)
    when 6
      stand.concat(specs)
    when 8
      nums.concat(specs)
    else
      stand.concat(nums, specs)
    end
  end
end
