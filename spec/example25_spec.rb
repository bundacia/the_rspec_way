# -----------------
# I want it NOW!
# -----------------
RSpec.describe Item do

  let!(:chocolate    ) { Factory.build :item, name: 'Chocolate' }
  let!(:peanut_butter) { Factory.build :item, name: 'Peanut Butter' }

  describe '.search' do
    it 'can lookup by name' do
      matching_deals = described_class.search 'Chocolate'
      expect(matching_deals).to     include chocolate
      expect(matching_deals).to_not include peanut_butter
    end
  end

end
