class Prime
  def self.nth(n)
    prime = 2
    count = 1
    while count != n do
      prime = prime + 1
      count += 1
    end
    prime
  end
end
