puts "Clearing components..."
Component.destroy_all

puts "Creating components..."
Component::COMPONENTTYPES.each do |component_type|
  Component.create!(
    component_type: component_type,
    image_url: "app/assets/images/#{component_type}comp.png"
  )
end
puts "...created #{Component.count} spacestation components."
