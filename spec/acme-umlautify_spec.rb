# encoding: UTF-8
require 'spec_helper'

module Acme
  module Umlautify
    describe String do
      describe ".umlautify!" do
        
        it "should sprinkle band names with umlauts liberally" do
          "Motorhead".umlautify!.should == "Mötörhëäd"
        end
        
        it "should handle all cases of vowels" do
          "aeiouAEIOUyY".umlautify!.should == "äëïöüÄËÏÖÜÿŸ"
        end
        
        it "should modify in place" do
          first = "this_string"
          second = first.umlautify!
          second.should == "thïs_strïng" && first.should == "thïs_strïng"
        end
      end

      describe ".umlautify" do
        it "should sprinkle band names with umlauts liberally" do
          "Motley Crue".umlautify.should == "Mötlëÿ Crüë"
        end
      
        it "should handle all vowels" do
          "aeiouAEIOUyY".umlautify.should == "äëïöüÄËÏÖÜÿŸ"
        end
      
        it "shouldn't mutate" do
          first = "this_string"
          second = first.umlautify
          second.should == "thïs_strïng" && first.should == "this_string"
        end
      end
    end
  end
end
