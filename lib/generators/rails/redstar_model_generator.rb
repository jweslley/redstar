require 'rails/generators/active_record/model/model_generator'
require 'redstar/generated_attribute'

module Rails
  module Generators
    class RedstarModelGenerator < ActiveRecord::Generators::ModelGenerator
      def self.source_root
        @source_root ||= File.expand_path('templates', File.dirname(__FILE__))
      end
    end
  end
end
