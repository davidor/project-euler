# How many Sundays fell on the first of the month during the 
# twentieth century (1 Jan 1901 to 31 Dec 2000)?

require 'date'

start_date = Date.parse('01-01-1901')
end_date = Date.parse('31-12-2000')
puts (start_date..end_date).to_a.count { |date| date.sunday? and date.day == 1 }