require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end



def setup
    @user = User.new(name: "Beispielname", benutzername: "BeispielBenutzername", email: "beispiel@beispiel.de",
    	password: "abcdef", password_confirmation: "abcdef")
  end

    test "Überprüft einfach, ob es einen User gibt" do
    assert @user.valid?
  end

  # Überprüft, ob es die Attribute gibt

    test "Name sollte vorhanden sein" do
    @user.name = "     "
    assert_not @user.valid?
  end

    test "Benutzername sollte vorhanden sein" do
    @user.benutzername = "     "
    assert_not @user.valid?
  end

    test "email sollte vorhanden sein" do
    @user.email = "     "
    assert_not @user.valid?
  end

  # Schränkt die Länge der Eingaben ein

   test "Name sollte nicht zu lang sein" do
    @user.name = "a" * 50
    assert_not @user.valid?
  end

   test "Benutzername sollte nicht zu lang sein" do
    @user.name = "a" * 50
    assert_not @user.valid?
  end

  test "email sollte nicht zu lang sein" do
    @user.email = "a" * 200 + "@beispiel.de"
    assert_not @user.valid?
  end


  # überprüft, dass die email das richtige format hat


	test "Überprüfung gültiger email-Adressen" do
    valid_addresses = %w[auto@beispiel.com BEISPIEL@abc.COM A_B-CD@beispiel.org
                         abc.def@beispiel.de peter-pan@gmx.de abc_def@gmail.com]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end


	#überprüft ungültige email-adressen

   test "Überprüfung ungültiger email-Adressen" do
    invalid_addresses = %w[beispiel@beispiel,de beispiel@beispiel,com benutzer_at_foo.org benutzer.name@beispiel.
                           abc@def_ght.de abc@def+def.com  abc@def_ght.com abc@def+def.de]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end


# überprüft Einzigartigkeit der email-Adresse

	test "Einzigartigkeit email-Adresse" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

# überprüft, dass Passwort nicht leer ist


 test "Es sollte kein leeres Passwort eingegeben werden" do
    @user.password = @user.password_confirmation = " " * 8
    assert_not @user.valid?
  end

# Passwort sollte eine Mindestlänge haben

test "Mindestlänge Passwort" do
    @user.password = @user.password_confirmation = "a" * 6
    assert_not @user.valid?
  end




end
