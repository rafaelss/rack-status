require "rack/status/version"

module Rack
  class Status
    def initialize(app)
      @app = app
    end

    def call(env)
      if env["PATH_INFO"] == "/status"
        [200, { "Content-Type" => "text/plain" }, ["OK"]]
      else
        @app.call(env)
      end
    end
  end
end
