require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Theme" do
  
  before(:all) do
    @s = "Test"
  end

  it "should format without a theme" do
    @s.ai.should == "\e[0;33m\"Test\"\e[0m"
  end

  it "should not format with a theme if an invalid theme is specified" do
    @s.ai(:theme => :theme_failure).should == "\e[0;33m\"Test\"\e[0m"
  end

  it "should format with a valid theme" do
    @s.ai(:theme => :test).should == "\e[1;34m\"Test\"\e[0m"
  end

end
