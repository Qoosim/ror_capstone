require('rails_helper')

RSpec.describe(Mytransaction, type: :model) do
  context 'ActiveRecord Associations' do
    it { should belong_to(:user) }
  end

  context 'Model Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(255) }
    it { should validate_presence_of(:amount) }
  end
end
