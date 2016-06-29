require 'test_helper'

class DatenTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


def setup
    @daten = daten.new(was: "Auto", standort: "Berlin", wohin: "London" , datum: "09.11.2016")
  end

    test "Überprüft einfach, ob es einen daten gibt" do
    assert @daten.valid?
  end

  # Überprüft, ob es die Attribute gibt

    test "Was sollte vorhanden sein" do
    @daten.was = "     "
    assert_not @daten.valid?
  end

    test "Standort sollte vorhanden sein" do
    @daten.standort = "     "
    assert_not @daten.valid?
  end

    test "Wohin sollte vorhanden sein" do
    @daten.wohin = "     "
    assert_not @daten.valid?
  end

   test "Datum sollte vorhanden sein" do
    @daten.datum = "     "
    assert_not @daten.valid?
  end


end
