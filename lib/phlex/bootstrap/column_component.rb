# frozen_string_literal: true

class Phlex::Bootstrap::ColumnComponent < Phlex::HTML
  def initialize(class: [], size: nil, align: nil)
    @classes = binding.local_variable_get(:class)
    @size = size
    @align = align
  end

  def template(&) = div(**classes(@classes, with_align?: :"text-#{@align}", with_size?: :"col-md-#{@size}", without_size?: :"col-md"), &)

  def with_size? = @size

  def without_size? = !with_size?

  def with_align? = @align
end
