require "rails_helper"

RSpec.describe Post, type: :model do
  describe "relationships" do
    it { should belong_to(:user) }
  end

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }

    let(:user) { build(:user) }

    subject {
      described_class.new(
        title: "Anything",
        content: "Lorem ipsum",
        user: user
      )
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a content" do
      subject.content = nil
      expect(subject).to_not be_valid
    end
  end
end
