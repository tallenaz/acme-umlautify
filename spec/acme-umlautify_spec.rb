# encoding: UTF-8
require 'spec_helper'

module Acme
  module Umlautify
    describe String do
      describe ".umlautify!" do
        
        it "should sprinkle band names with umlauts liberally" do
          String.new("Motorhead").umlautify!.should == "Mötörhëäd"
        end
        
        it "should handle all cases of vowels" do
          String.new("aeiouAEIOUyY").umlautify!.should == "äëïöüÄËÏÖÜÿŸ"
        end
        
      end
    end
  end
end
