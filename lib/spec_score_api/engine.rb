module SpecScoreApi
  class Engine < ::Rails::Engine
    isolate_namespace SpecScoreApi

    config.generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
    end

  end
end
