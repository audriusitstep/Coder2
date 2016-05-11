require "./lib/coder.rb"
require "test/unit"

class TestCoder < Test::Unit::TestCase

  def test_simple_coder
    text = "aaaa bbbb"
    coder = Coder::TextCoder.new(text, Coder::SimplePermutation.new)
    assert_equal(coder.get_coded_text, "bbbb cccc")
  end

  def test_simple_coder_all_text
    text = "aaaa bbbb"
    coder = Coder::TextCoder.new(text, Coder::SimplePermutation.new)
    assert_equal(coder.get_bad_coded_text, "cccc cccc")
  end

  def test_simple_coder_with_number_permutation
    text = "1234 4567"
    coder = Coder::TextCoder.new(text, Coder::NumberPermutation.new)
    assert_equal(coder.get_bad_coded_text, "0034 4567")
  end

end
