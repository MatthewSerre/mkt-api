require "rails_helper"

RSpec.describe Course, type: :model do
  it { is_expected.to have_many(:course_driver_connections) }
  it { is_expected.to have_many(:drivers) }
  it { is_expected.to have_many(:course_kart_connections) }
  it { is_expected.to have_many(:karts) }
  it { is_expected.to have_many(:course_glider_connections) }
  it { is_expected.to have_many(:gliders) }

  context "when created" do
    it "validates name presence" do
      expect { described_class.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "validates name uniqueness" do
      described_class.create!(name: "Course 1")
      expect { described_class.create!(name: "Course 1") }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe "debut_system" do
    context "when called with a valid system" do
      before do
        create_list :course, 3, debut_system: "NES"
        create_list :course, 3, debut_system: "3DS"
      end

      it "returns an array of courses from that system" do
        expect(described_class.debut_system("NES").length).to eq(3)
      end
    end
  end
end
