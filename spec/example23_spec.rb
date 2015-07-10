# -------------------------------
# Putting It All Together (after)
# -------------------------------
RSpec.describe DataSource do

  describe '#timeout' do
    subject { data_source.timeout action }
    let(:data_source) { described_class.new timeout: configured_timeout }
    let(:action) { :test_action }
    let(:default_timeout) { DataSource::DEFAULT_TIMEOUT }

    context "when explicitly passed in global timeout" do
      let(:configured_timeout) { 11 }
      it { should eq 11 }
    end

    context "when explicitly passed in non-integer global timeout" do
      let(:configured_timeout) { 11.1 }
      it { should eq 11.1 }
    end

    context "when given a hash with a key for the given action" do
      let(:configured_timeout) { {action => 12} }
      it { should eq 12 }
    end

    context "when given a hash with no key for the given action" do
      let(:configured_timeout) { {:other_action => 12} }
      it { should eq default_timeout }
    end

    context "when not specified" do
      let(:data_source) { described_class.new }
      it { should eq default_timeout }
    end
  end
end
