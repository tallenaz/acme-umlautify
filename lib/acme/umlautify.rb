require "acme/umlautify/version"

module Acme
  module Umlautify
    class ::String
      def umlautify!
        umlaut_map = { "A" => "\u00C4", "E" => "\u00CB", "I" => "\u00CF",
    		               "O" => "\u00D6", "U" => "\u00DC", "Y" => "\u0178",
                       "a" => "\u00E4", "e" => "\u00EB", "i" => "\u00EF",
   		                 "o" => "\u00F6", "u" => "\u00FC", "y" => "\u00FF" }
        umlaut_map.each { |key, value| self.gsub!(key, value) }
   		  self
      end
    end
  end
end
