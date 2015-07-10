# ----------------------
# Changing the Subject
# ----------------------
RSpec.describe Array do

  describe 'when newly initialized' do
    it { should be_empty }
  end

  describe 'when non-empty' do
    subject { [1,2,3,4,5] }
    it { should_not be_empty }
  end

end
