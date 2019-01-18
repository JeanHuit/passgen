$LOAD_PATH << '.'
require 'passwordcomplexity'

# Generate Password and inherits complexity
class GeneratePassword < GeneratePasswordComplexity
  def password_gen(len, number_value)
    a = 0
    password = ''

    while a < len
      xfactor = Random.new
      # number_value is the sum of permutations, standard,numerical and special
      perms = permute(number_value).to_a
      index = xfactor.rand(perms.length)
      password << perms[index]
      a += 1
    end
    password
  end
end
