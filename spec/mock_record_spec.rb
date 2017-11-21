require "spec_helper"

RSpec.describe MockRecord do
  it "has a version number" do
    expect(MockRecord::VERSION).not_to be nil
  end

  context "when a class inherits MockRecord::Base" do
		before do
			class Session < MockRecord::Base
			end
			@session = Session.new
		end
		it "has default values" do
			expect(@session.id).to eq(0)
		end
		it "has class methods" do
			expect(@session.class.base_class).to eq(Session)
			expect(@session.class.primary_key).to eq(0)
			expect(@session.class.name).to eq("Session")
		end
	 	it "has _read_attribute method" do
			expect(@session._read_attribute("something")).to be_nil
		end
	 	it "has marked_for_destruction? method" do
			expect(@session.marked_for_destruction?).to be false
		end
	 	it "has destroyed? method" do
			expect(@session.destroyed?).to be false
		end
	 	it "has new_record? method" do
			expect(@session.new_record?).to be false
		end
  end
end
