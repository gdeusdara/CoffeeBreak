require 'test_helper'

class PaginasIniciaisControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get paginas_iniciais_home_url
    assert_response :success
  end

  test "should get sobre" do
    get paginas_iniciais_sobre_url
    assert_response :success
  end

end
