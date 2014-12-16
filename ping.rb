require 'net/ping'

ph = Net::Ping::HTTP.new("www.reddit.com")

start = Time.now
counter = 0 
until Time.now > start + 1
	if ph.ping?
		counter += 1
	end
end

if counter > 40
	puts "good connection"
elsif counter <= 40 && counter >= 20
	puts "fair connection"
else 
	puts "shitty connection"
end
