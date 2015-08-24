module ApplicationHelper
  def link_to_add_forms(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    forms = f.forms_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "new", :f => builder)
    end
    link_to_function(name, "add_forms(this, \"#{association}\", \"#{escape_javascript(forms)}\")")
  end
end
