class Fixnum
  ONES = %w(nil I II)

  def to_roman
    ONES[self]
  end
end
