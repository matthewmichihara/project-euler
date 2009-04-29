class Integer
  def choose(n)
    self.factorial/((self-n).factorial*n.factorial)
  end
  
  def factorial
    if self == 0
      1
    else
      self * (self-1).factorial
    end
  end
  
  def is_circular_prime
    array = self.to_s.split(//)
    self.to_s.length.times do
      array << array.first
      array.delete_at(0)
      unless array.join.to_i.is_prime
        return false
      end
    end
    return true
  end
  
  def is_palindrome
    num = self.to_s
    num == num.reverse
  end
  
  def is_prime
    for i in 2..Math.sqrt(self).floor
      return false if self % i == 0
    end
    return true
  end
end