require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    user = User.new(firstname: 'Alex', lastname: 'king',
                    username: 'alex234', email: 'ridwanullahi@gmail.com', password: 'olalekan2222', phone_number: '+2348144580946')
    avatar = File.open('C:\Users\Ridwan\Desktop/my_photo.jpg')
    user.avatar.attach(io: avatar, filename: 'avatar.jpg', content_type: 'image/jpeg')
    user.save
  end

  before { subject.save }

  describe 'validate the user model' do
    it { should allow_value('Alex').for(:firstname) }
    it { should allow_value('king').for(:lastname) }
    it { should allow_value('alex234').for(:username) }
    it { should allow_value('olalekan2222').for(:password) }
    it { should allow_value('+2348144580946').for(:phone_number) }
    it { should allow_value(200.0).for(:balance) }
    it { should allow_value(10.0).for(:bonus) }

    it { should have_db_column(:balance).of_type(:decimal) }

    it 'All user attributes must be present' do
      expect(subject.name).to be_instance_of(String)
      expect(subject.username).to be_instance_of(String)
    end

    describe 'check association' do
      it { should have_many(:transactions) }
    end
  end
end
