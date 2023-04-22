# frozen_string_literal: true

require "phlex"
require "bundler"
require "rspec"
require "phlex/testing/view_helper"

Bundler.require :default

Zeitwerk::Loader.eager_load_all
