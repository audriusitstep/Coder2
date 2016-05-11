lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "coder"

text = File.open('data/sample_text.txt', 'r').read
coder = Coder::TextCoder.new(text, Coder::SimplePermutation.new)
puts coder.get_coded_text
