require 'unirest'

#INDEX ACTION
response = Unirest.get("http://localhost:3000/api/contacts")
puts JSON.pretty_generate(response.body)

#SHOW ACTION
response = Unirest.get("http://localhost:3000/api/contacts/1")
puts JSON.pretty_generate(response.body)

#CREATE ACTION
response = Unirest.post()