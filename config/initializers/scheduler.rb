require 'rufus-scheduler'

# Create a new scheduler instance
scheduler = Rufus::Scheduler.new

# scheduler.every '1d' do
#   system('rake users:update_balances') 
# end

#Schedule the task to run once every day  at 12:00am
scheduler.every '1d', at: '12:40am' do
	system "rake users:increment"
end