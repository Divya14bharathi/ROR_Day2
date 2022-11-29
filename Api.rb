# Write a program  to make api call to https://api.covid19api.com/summary and print the results.
# Use exception handling to handle api errors.
# If API call is successfull display results else display a message that call is not successfull

require 'httparty'

begin
res = HTTParty.get('https://api.covid19api.com/summary/1')

puts res.code
if  res.success?
    puts response.body
else
    puts "API call is not successfull"
end

rescue => error
    p error.message
end
