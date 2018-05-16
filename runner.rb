require 'unirest'

#INDEX ACTION
# response = Unirest.get("http://localhost:3000/api/contacts")
# puts JSON.pretty_generate(response.body)

# #SHOW ACTION
# response = Unirest.get("http://localhost:3000/api/contacts/1")
# puts JSON.pretty_generate(response.body)

# #CREATE ACTION
response = Unirest.post("http://localhost:3000/api/contacts", parameters: {first_name: "Bugs", last_name: "Bunny", email: "hey@whatsup.doc", phone: "3434343434"})
puts JSON.pretty_generate(response.body)

# #UPDATE ACTION
# contact_id = 4
# runner_params = {phone: 6767676767}
# response = Unirest.patch("http://localhost:3000/api/contacts/#{contact_id}", parameters: runner_params)
# puts JSON.pretty_generate(response.body)

# #DESTROY ACTION
# contact_id = 4
# response = Unirest.delete("http://localhost:3000/api/contacts/#{contact_id}")
# puts JSON.pretty_generate(response.body)










