# frozen_string_literal: true

class Phlex::Bootstrap::CardComponent < Phlex::HTML
  def initialize(class: [])
    @classes = Array(binding.local_variable_get(:class))
  end

  def template(&) = div(**classes(:card, @classes), &)

  def header(class: [], &) = div(**classes("card-header", binding.local_variable_get(:class)), &)

  def body(class: [], &) = div(**classes("card-body", binding.local_variable_get(:class)), &)

  def footer(class: [], &) = div(**classes("card-footer", binding.local_variable_get(:class)), &)

  def title(class: [], &) = h5(**classes("card-title", binding.local_variable_get(:class)), &)
end
