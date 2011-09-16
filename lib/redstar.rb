module Redstar
  class Railtie < ::Rails::Railtie
    config.app_generators.orm = :redstar_model
  end
end
