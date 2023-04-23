# frozen_string_literal: true

class Phlex::Bootstrap::RowComponent < Phlex::HTML
  def initialize(class: [], align: nil)
    @classes = binding.local_variable_get(:class)
    @align = align
  end

  def template(&) = div(**classes(@classes, :row, with_align?: :"text-#{@align}"), &)

  def with_align? = !@align.nil?
end
