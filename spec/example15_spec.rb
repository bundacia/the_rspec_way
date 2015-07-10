# -------------------
# Describing Classes
# -------------------
RSpec.describe Array do

  it { expect(Array.new.empty?).to be true     }
  it { expect(Array.new).to be_empty           }
  it { expect(described_class.new).to be_empty }
  it { expect(subject).to be_empty             }

  it { should be_empty }

end
