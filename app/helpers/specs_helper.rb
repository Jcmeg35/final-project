module SpecsHelper

  def spec_type(spec)
    if spec.type == "Specs::Density"
      return "Density @ 15C"
    elsif spec.type == "Specs::Viscosity"
        return "Viscosity @ 40C"
    elsif
      spec.type == "Specs::Flash_point"
        return "Flash point @ 40C"
    elsif
      spec.type == "Specs::Pour_point"
        return "Pour point"
    elsif
      spec.type == "Specs::Sulfur"
        return "Sulfur"
    elsif
      spec.type == "Specs::Cetane_index"
        return "Cetane index"
    elsif
      spec.type == "Specs::Carbon_residue"
        return "Carbon residue"
    elsif
      spec.type == "Specs::Ash"
        return "Ash %"
    elsif
      spec.type == "Specs::Water"
        return "Water"
    elsif
      spec.type == "Specs::Vanadium"
        return "Vanadium"
    elsif
      spec.type == "Specs::Aluminum_plus_silicon"
        return "Aluminum + silicon"
    elsif
      spec.type == "Specs::Zinc"
        return "Zinc"
    elsif
      spec.type == "Specs::Phosphorus"
        return "Phosphorus"
    elsif
      spec.type == "Specs::Calcium"
        return "Calcium"
    else 
      "No Spec"
    end 
  end 
end
