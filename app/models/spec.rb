class Spec < ActiveRecord::Base
  after_save :set_name

  NAMES = {
    "Specs::Density" => "Density",
    "Specs::Ash"  => "Ash %",
    "Specs::Aluminum_plus_siicon"  => "Aluminum + Silicon",
    "Specs::Sulfur"  => "Sulfur",
    "Specs::Calcium"  => "Calcium",
    "Specs::Carbon_residue"  => "Carbon Residue",
    "Specs::Cetane_index"  => "Cetane Index",
    "Specs::Flash_point"  => "Flash Point",
    "Specs::Phosphorus"  => "Phosphorus",
    "Specs::Pour_point"  => "Pour Point",
    "Specs::Vanadium"  => "Vanadium",
    "Specs::Viscosity"  => "Viscosity",
    "Specs::Water"  => "Water",
    "Specs::Zinc"  => "Zinc",
  }

  def set_name
    self.name = NAMES[self.type]
  end
end
