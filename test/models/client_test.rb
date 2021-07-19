require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  def setup
    @client = Client.create(name: "Daniel", email: "daniel@eltacolab.com", contact_name: "daniel")
  end

  test "Client should be valid" do
    assert @client.valid? , "Client is valid"
    # assert true
  end

  test "Client name should not be blank" do
    @client.name = ""
    assert_not @client.valid?, "Client name can't be blank"
  end

  test "Email should be valid" do
    @client.email.include?("@")
    assert @client.valid?, "Email not valid"
  end
end
