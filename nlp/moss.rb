require 'moss_ruby'

# Create the MossRuby object
moss = MossRuby.new(272123740) #replace 000000000 with your user id

# Set options  -- the options will already have these default values
moss.options[:max_matches] = 10
moss.options[:directory_submission] =  false
moss.options[:show_num_matches] = 250
moss.options[:experimental_server] =    false
moss.options[:comment] = ""
moss.options[:language] = "c"

# Create a file hash, with the files to be processed
to_check = MossRuby.empty_file_hash
MossRuby.add_file(to_check, "user_35.js")
MossRuby.add_file(to_check, "user_36.js")
MossRuby.add_file(to_check, "user_37.js")

# Get server to process files
url = moss.check to_check

# Get results
results = moss.extract_results url

puts results

# Use results
# puts "Got results from #{url}"
# results.each { |match|
#     puts "----"
#     match.each { |file|
#         puts "#{file[:filename]} #{file[:pct]} #{file[:html]}"
#     }
# }

# File.open('results.html', 'w+') do |f|
#     f.write results
# end