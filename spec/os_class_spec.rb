require 'spec_helper'

require 'nmap/os'
require 'cgi'

describe OS do
  subject { @xml.hosts.first.os.classes.first }

  it "should parse the type" do
    subject.type.should == :"general purpose"
  end

  it "should parse the vendor" do
    subject.vendor.should == 'Linux'
  end

  it "should parse the family" do
    subject.family.should == :Linux
  end

  it "should parse the accuracy" do
    subject.accuracy.should be_between(0,100)
  end
end
