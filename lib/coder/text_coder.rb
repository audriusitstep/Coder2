module Coder
  class TextCoder

    attr_accessor :text, :permutation_class
  
    def initialize(text, permutation_class)
      @text = text
      @permutation_class = permutation_class
    end

    def get_coded_text
      chars = []
      text.split('').each do |char|
        if permutation_class.permutation.keys.include?(char)
          chars << permutation_class.permutation[char]
        else
          chars << char
        end
      end
      chars.join
    end

    def get_bad_coded_text
      text.split('').each do |char|
        if permutation_class.permutation.keys.include?(char)
          text.gsub!(char, permutation_class.permutation[char])
        end
      end
      text
    end

  end
end
