require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutObjects < Neo::Koan

  def test_everything_is_an_object
    assert_equal __(true), 1.is_a?(Object)
    assert_equal __(true), 1.5.is_a?(Object)
    assert_equal __(true), "string".is_a?(Object)
    assert_equal __(true), Object.is_a?(Object)
    assert_equal __(true), AboutObjects.is_a?(Object)
  end

  def test_objects_can_be_converted_to_strings
    assert_equal __("123"), 123.to_s
    assert_equal __(""), nil.to_s
  end

  def test_objects_can_be_inspected_for_debugging
    assert_equal __("123"), 123.inspect
    assert_equal __("nil"), nil.inspect
  end

  def test_double_equals_compares_contents
    string0 = "ruby"
    string1 = "ru" + "by"

    assert_equal true,  string0 == string1
    assert_equal false, string0 != string1
  end

  def test_equal_method_checks_if_same_object
    string0 = "ruby"
    string1 = "ru" + "by"

    assert_equal true,  string0.equal?(string0)
    assert_equal false, string0.equal?(string1)
  end

  def test_clone_creates_a_different_object
    obj = Object.new
    copy = obj.clone

    assert_equal __(false), obj.equal?(copy)
  end
end
