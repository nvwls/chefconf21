case node['ec2']['placement_availability_zone']
when /us-/
  url = 'https://us.example.com'
when /eu-/
  url = 'https://eu.example.com'
end

puts url
