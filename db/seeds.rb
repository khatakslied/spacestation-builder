puts "Clearing components..."
Component.destroy_all

puts "Creating components..."
Component::COMPONENTTYPES.each do |component_type|
  component = Component.new(
    component_type: component_type,
    image_url: "#{component_type}comp.png"
  )
  if component_type == "habitat"
    component.room = 2
    component.power_generated = -15
  elsif component_type == "telescope"
    component.room = 0
    component.power_generated = -30
  elsif component_type.include? "solar"
    component.room = 0
    component.power_generated = 20
  else
    component.room = 0
    component.power_generated = -10
  end
  component.save!
end
puts "...created #{Component.count} spacestation components."
