class Complement
  def self.of_dna(dna)
    dna.tr("CGT", "GCA")
  end
end
