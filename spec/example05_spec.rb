# -----------------
# Engage!
# -----------------
RSpec.describe "Array" do

  it 'starts out empty' do
    array = Array.new
    expect(array.empty?).to be true
  end

end
#
# % rspec
#
# -- or --
#
# % rspec -f doc
#
