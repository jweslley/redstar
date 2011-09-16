require 'rails/generators/generated_attribute'

module Rails
  module Generators
    class GeneratedAttribute

      def initialize(name, type)
        raise Thor::Error, "Missing type for attribute '#{name}'.\nExample: '#{name}:string' where string is the type." if type.blank?
        @required = name.ends_with? '*'  # <-- this is a redstar
        @name, @type = name.gsub('*', ''), type.to_sym
      end

      def required?
        @required
      end
    end
  end
end
