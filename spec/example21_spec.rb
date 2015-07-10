# --------------------------------
# Putting It All Together (before)
# --------------------------------
RSpec.describe DataSource do

  describe '#timeout' do
    default_timeout = DataSource::DEFAULT_TIMEOUT

    context "find_offer" do
      it "respects an explicitly passed in global timeout" do
        high_find_offer_timeout_ds = described_class.new timeout: 11
        expect(high_find_offer_timeout_ds.timeout :find_offer).to eq(11)
      end

      it "respects an explicitly passed in non-integer global timeout" do
        high_find_offer_timeout_ds = described_class.new timeout: 11.1
        expect(high_find_offer_timeout_ds.timeout :find_offer).to eq(11.1)
      end

      it "respects an explicitly passed in default timeout" do
        high_find_offer_timeout_ds = described_class.new timeout: {find_offer: 12}
        expect(high_find_offer_timeout_ds.timeout :find_offer).to eq(12)
      end

      it "uses global timeout when hash is missing endpoint key" do
        high_find_offer_timeout_ds = described_class.new timeout: {search_offers: 13}
        expect(high_find_offer_timeout_ds.timeout :find_offer).to eq(default_timeout)
      end

      it "defaults to #{default_timeout} seconds" do
        data_source = described_class.new
        expect(data_source.timeout :find_offer).to eq(default_timeout)
      end
    end

    context "search_offers" do
      it "respects an explicitly passed in global timeout" do
        high_search_offers_timeout_ds = described_class.new timeout: 11
        expect(high_search_offers_timeout_ds.timeout :search_offers).to eq(11)
      end

      it "respects an explicitly passed in non-integer global timeout" do
        high_find_offer_timeout_ds = described_class.new timeout: 11.1
        expect(high_find_offer_timeout_ds.timeout :search_offers).to eq(11.1)
      end

      it "respects an explicitly passed in default timeout" do
        high_search_offers_timeout_ds = described_class.new timeout: {search_offers: 12}
        expect(high_search_offers_timeout_ds.timeout :search_offers).to eq(12)
      end

      it "uses global timeout when hash is missing endpoint key" do
        high_find_offer_timeout_ds = described_class.new timeout: {find_offer: 13}
        expect(high_find_offer_timeout_ds.timeout :search_offers).to eq(default_timeout)
      end

      it "defaults to #{default_timeout} seconds" do
        data_source = described_class.new
        expect(data_source.timeout :find_offer).to eq(default_timeout)
      end
    end
  end

end
