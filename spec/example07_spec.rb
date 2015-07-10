# -------------------
# Predicate matchers
# -------------------
RSpec.describe "Array" do

  it 'starts out empty' do
    array = Array.new
    expect(array).to be_empty
  end

end
