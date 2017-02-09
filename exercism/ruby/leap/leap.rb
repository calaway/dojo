class Year
  def self.leap?(year)
    if year % 4 == 0
      true
    else
      false
    end
  end
end
