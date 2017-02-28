class Prime
  def self.nth(n)
    validate_input(n)
    prime = 2
    count = 1
    trial_prime = 3
    while count < n do
      if is_prime?(trial_prime)
        prime = trial_prime
        count += 1
      end
      trial_prime += 2
    end
    prime
  end

  def self.validate_input(input)
    raise ArgumentError unless input.class == Fixnum && input > 0
  end

  def self.is_prime?(trial_prime)
    max_trial_divisor = Math.sqrt(trial_prime).floor
    all_trial_divisors = (3..max_trial_divisor).step(2).to_a
    all_trial_divisors.none? do |trial_divisor|
      trial_prime % trial_divisor == 0
    end
  end
end
