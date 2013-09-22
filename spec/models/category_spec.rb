require 'spec_helper'

describe Category do
  it "should be valid" do
    Category.new.should be_valid
  end
end
