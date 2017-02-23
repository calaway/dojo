class Fixnum
  ONES = %w(nil I II III IV V VI VII VIII IX)

  def to_roman
    ONES[self]
  end
end
