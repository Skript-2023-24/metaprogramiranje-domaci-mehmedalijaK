require "google_drive"
require "./table.rb"

# Creates a session. This will prompt the credential via command line for the
# first time and save it to config.json file for later usages.
# See this document to learn how to create config.json:
# https://github.com/gimite/google-drive-ruby/blob/master/doc/authorization.md
session = GoogleDrive::Session.from_config("config.json")

# Gets list of remote files.
# session.files.each do |file|
#   p file.title
# end

ws = session.spreadsheet_by_key("1rYyruUNUuLLUn5dZFy0cO3Ee59_adsaSYOzNpW4BQq4").worksheets[0];
readSheets = Table.new(ws)
p readSheets.getTableMatrix()
p readSheets.ws
p readSheets.row(2)


# readSheets["Prva kolona"][0] = "5"

# # Access values in the second column for the first row
# value = readSheets["Prva kolona"][0]

# p readSheets["Prva kolona"][0]

readSheets.each {|col| puts col}
