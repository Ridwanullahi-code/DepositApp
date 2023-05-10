namespace :users do
  desc 'Update all user balances'
  task update_balances: :environment do
    puts 'Updating user balances...'
    User.all.each do |user|
      user.update!(balance: user.balance + user.bonus)
    end
  end
end
