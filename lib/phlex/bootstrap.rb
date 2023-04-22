require "phlex"
module Phlex
  module Bootstrap
    Zeitwerk::Loader.new.tap do |loader|
      loader.push_dir("#{__dir__}/bootstrap", namespace: Phlex::Bootstrap)
      loader.inflector = Zeitwerk::GemInflector.new(__FILE__)
      loader.setup
    end
  end
end
