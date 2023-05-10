namespace :users do
  desc 'Update user balance for registered users who have been active for at least 2 days'
  task increment: :environment do
    users = User.where.not(created_at: nil)
    # Loop through each registered user
    users.each do |user|
      days_since_registered = (Time.zone.now.to_date - user.created_at.to_date).to_i
      # Calculate the number of days since the user's registration date
      if days_since_registered >= 2
        # Increment the user's balance by a fixed amount (in this example, 200 units)
        user.balance += 200

        # Save the updated user balance back to the database
        user.save!
        puts "Updated balance for user #{user.id}: +200 (new balance: #{user.balance})"

      else
        user.balance = user.balance
      end
    end
  end
end
