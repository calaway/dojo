class Year
  def self.leap?(year)
    if year % 100 == 0
      false
    elsif year % 4 == 0
      true
    else
      false
    end
  end
end
