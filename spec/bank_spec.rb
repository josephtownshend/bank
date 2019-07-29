require 'bank'

RSpec.describe Bank do
  it "Default balance of zero" do
    expect(subject.get_balance).to eq 0
  end

  describe "#deposit" do
    it "Can deposit funds into account" do
    subject.deposit(100)
    expect(subject.get_balance).to eq 100
  end
end


end
