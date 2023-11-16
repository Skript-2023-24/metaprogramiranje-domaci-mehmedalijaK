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

ws1 = session.spreadsheet_by_key("1rYyruUNUuLLUn5dZFy0cO3Ee59_adsaSYOzNpW4BQq4").worksheets[1];
readSheets1 = Table.new(ws1)

# p readSheets+readSheets1
p readSheets.row(1)
p readSheets1.ws
p readSheets1.getTableMatrix
p readSheets1.deleteEmptyRows
# p readSheets.getTableMatrix()
# p readSheets.ws
# p readSheets.row(2)

# p readSheets.Prva_kolona
# p readSheets.Druga_kolona
# p readSheets.Treća_kolona

# p readSheets["Prva kolona"][0]

# p readSheets.Prva_kolona.sum
# p readSheets.Prva_kolona.avg
# p readSheets.Druga_kolona.Test01

# p readSheets.Prva_kolona.map { |element| element*2 }
# p readSheets.Prva_kolona.select {|element| element.include? "1"}
# p readSheets.Prva_kolona.reduce(0) { |sum, element| sum + element }
# readSheets["Prva kolona"][0] = "5"

# # Access values in the second column for the first row
# value = readSheets["Prva kolona"][0]

# p readSheets["Prva kolona"][0]

# readSheets.each {|col| puts col}
# readSheets.prvaKolona
# readSheets.prvaKolona
