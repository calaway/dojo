class Complement
  def self.of_dna(dna)
    dna_stripped = dna.tr("^GCTA", "")
    rna = dna_stripped.tr("GCTA", "CGAU")
  end
end
