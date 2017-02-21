class Complement
  def self.of_dna(dna)
    dna.tr("ACGT", "UGCA")
  end
end
