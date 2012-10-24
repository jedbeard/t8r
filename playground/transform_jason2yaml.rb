require 'yaml/store'
require 'json'

counter = 1
file = File.new("input.json", "r")
json = ""
while (line = file.gets)
  json = json + line
  counter = counter + 1
end

file.close

File.open("test_json.json", 'w') {|f| f.write(JSON.parse(json)) }

Person = Struct.new :first_name, :last_name

people = [Person.new("Bob", "Smith"), Person.new("Mary", "Johnson")]

store = YAML::Store.new "test.store.yaml"

store.transaction do
  store["people"] = JSON.parse(json)
  store["greeting"] = {"for" => { "hello" => "world" }}
end
