# coding: utf-8
require 'test/unit'
require 'gongora'

class GongoraTest < Test::Unit::TestCase
  def test_write_words
    Gongora.write_words "Foo", "foo", "bar"
    assert File.directory? "bar"
    assert File.exists? "bar/foo"
    assert_equal "Foo", File.read("bar/foo")
    File.delete "bar/foo"
  end  

  def test_read_words
    assert_equal "puts \"I don\'t like Quevedo\"", Gongora.read_words "../test_files/read_test"
  end  

end
