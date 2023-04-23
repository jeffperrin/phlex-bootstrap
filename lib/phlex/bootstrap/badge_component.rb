# frozen_string_literal: true

class Phlex::Bootstrap::BadgeComponent < Phlex::HTML
  def initialize(class: [], variant: :secondary)
    @classes = Array(binding.local_variable_get(:class))
    @variant = variant
  end

  def template(&) = span(**classes(@classes, :badge, :"text-bg-#{@variant}"), &)
end
