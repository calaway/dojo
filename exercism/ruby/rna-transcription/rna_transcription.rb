class Complement
  def self.of_dna(dna)
    dna.tr("CG", "GC")
  end
end
