class Complement
  def self.of_dna(dna)
    return "" if dna[/[^GCTA]/]
    dna.tr("GCTA", "CGAU")
  end
end
