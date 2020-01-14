require 'http'

response = HTTP.get("http://localhost:3000/api/first_contact_url")
one_contact = response.parse["contact"]
puts "#{one_contact}"