# frozen_string_literal: true

require_relative "rulers/version"
require_relative "rulers/array"
require_relative "rulers/routing"

module Rulers
  class Application
    def call(env)
      klass, act = get_controller_action(env)
      controller = Klass.new(env)
      text = controller.send(act)    

      [200, {'Content-Type' => 'text/html'}, ["Hello from Rulers!"]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
