# frozen_string_literal: true

class Phlex::Bootstrap::ButtonComponent < Phlex::HTML
  def initialize(type: :button, variant: :secondary, size: nil, class: [], tooltip: nil, dismiss: nil)
    @type = type
    @variant = variant
    @classes = Array(binding.local_variable_get(:class))
    @size = size
    @tooltip = tooltip
    @dismiss = dismiss
  end

  def template(&)
    css_classes = classes(:btn, :"btn-#{@variant}", @classes, size?: "btn-#{@size}")
    tooltip = tooltip? ? {"data-bs-toggle": :tooltip, "data-bs-title": @tooltip} : {}
    dismiss = dismiss? ? {"data-bs-dismiss": :modal} : {}

    button(**css_classes, **tooltip, **dismiss, type: @type, &)
  end

  def size? = @size

  def tooltip? = @tooltip

  def dismiss? = @dismiss
end
