# -------------------
# Nesting
# -------------------
RSpec.describe Array do

  context 'when newly initialized' do
    it { should be_empty }
    it { should be_truthy }
    it { should be_a_kind_of Enumerable }
  end

end
