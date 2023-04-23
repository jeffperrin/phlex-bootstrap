# frozen_string_literal: true

class Phlex::Bootstrap::IconComponent < Phlex::HTML
  def initialize(class: [], name: "question", variant: nil)
    @name = name
    @classes = Array(binding.local_variable_get(:class))
    @variant = variant
  end

  def template(&) = i(**classes(:bi, "bi-#{@name}", @classes, with_variant?: "text-#{@variant}"), &)

  def with_variant? = @variant
end
