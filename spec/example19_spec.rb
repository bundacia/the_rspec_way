# ----------------------
# Let It Be
# ----------------------
RSpec.describe "1" do

  subject { 1.0 / divisor }

  describe 'when divisor is negative' do
    let(:divisor) { -2.0 }
    it { should be < 0 }
  end

  describe 'when divisor is positive' do
    let(:divisor) { 2.0 }
    it { should be > 0 }
  end

end
