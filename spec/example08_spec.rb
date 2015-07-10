# -------------------
# Predicate matchers
# -------------------
RSpec.describe "Array" do

  it 'starts out empty' do
    array = Array.new
    expect(array).to be_empty
  end

  # o.foo?       -> expect(o).to be_foo
  # o.peach?     -> expect(o).to be_a_peach
  # o.apple?     -> expect(o).to be_an_apple
  # o.has_worms? -> expect(o).to have_worms

end
