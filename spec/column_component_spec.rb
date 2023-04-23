# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Bootstrap::ColumnComponent do
  include Phlex::Testing::ViewHelper

  describe "#template" do
    context "with default params" do
      it "renders a column that collapses below medium screen sizes" do
        html = render Phlex::Bootstrap::ColumnComponent.new
        expect(html).to eq '<div class="col-md"></div>'
      end
    end

    context "with classes" do
      it "renders a column when classes are a string" do
        html = render Phlex::Bootstrap::ColumnComponent.new(class: "foo bar")
        expect(html).to eq '<div class="foo bar col-md"></div>'
      end

      it "renders a column when classes are an array" do
        html = render Phlex::Bootstrap::ColumnComponent.new(class: ["foo", "bar"])
        expect(html).to eq '<div class="foo bar col-md"></div>'
      end
    end

    context "with an explicit size" do
      it "renders a column" do
        html = render Phlex::Bootstrap::ColumnComponent.new(size: 3)
        expect(html).to eq '<div class="col-md-3"></div>'
      end
    end

    context "with alignment" do
      it "renders a column" do
        html = render Phlex::Bootstrap::ColumnComponent.new(align: :end)
        expect(html).to eq '<div class="text-end col-md"></div>'
      end
    end
  end
end
