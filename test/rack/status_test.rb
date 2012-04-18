require "bundler/setup"
require "minitest/autorun"
require "minitest/pride"
require "rack/test"

require "rack/status"

class Rack::StatusTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    main_app = proc { |env| [200, { "Content-Type" => "text/plain" }, ["Hello!"]]}
    Rack::Status.new(main_app)
  end

  def test_call_the_main_app
    get "/"
    assert last_response.ok?
    assert "Hello!", last_response.body
  end

  def test_return_the_status_response
    get "/status"
    assert last_response.ok?
    assert "OK", last_response.body
  end
end
