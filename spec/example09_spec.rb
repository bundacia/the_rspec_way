# -------------------
# Describing Classes
# -------------------
RSpec.describe Array do

  it 'starts out empty' do
    array = described_class.new
    expect(array).to be_empty
  end

end
