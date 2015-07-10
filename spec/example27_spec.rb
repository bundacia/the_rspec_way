# -----------------
# Before you go...
# -----------------
RSpec.describe Item do

  before(:each) do
    Factory.build :item, name: 'Chocolate'
    Factory.build :item, name: 'Peanut Butter'
  end

  describe '.search' do
    it 'can lookup by name' do
      matching_deals = Item.search 'Chocolate'
      expect(matching_deals.count).to eq 1
    end
  end

end
