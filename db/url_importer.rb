# require 'csv'
# require_relative '../config/environments/init'

# class UrlImporter
#   def self.import
#   	rowdata = []
#     csv = CSV.new(File.open("urls.csv"), :headers => false)
#     # newcsv = CSV.new(File.open("newcsv.csv"))
# 	    csv.each do |row| 
# 	      row[0][0] = ''
# 	      row[0][-1] = ''
# 	      long_url = row[0]
# 	      short_url = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(8).join
# 	      click_count = 0
# 	      element = "('#{long_url}', '#{short_url}', #{click_count})" #turning this into smth sql understands
# 	      rowdata << element #rowdata is an array of strings of data
# 	    end
# 	    rowdata[-1][-1] = ''
#   		sqlcommand = "INSERT INTO urls (long_url, short_url, click_count) VALUES #{rowdata.join(",")}"
#   		#.join puts the rowdata into one long-ass string with commas(,) in between
#   		Url.connection.execute sqlcommand
#   		#want to execute this command into Url table.
#   end
# end

# UrlImporter.import


# # values = []
# # TIMES.times do
# # 	values << "()"	
# # end
# # sql = "INSERT INTO user_node_scores (`score`, `updated_at`, `node_id`, `user_id`) VALUES #{inserts.join(", ")}"
