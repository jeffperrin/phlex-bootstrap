# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Bootstrap::RowComponent do
  include Phlex::Testing::ViewHelper

  describe "#template" do
    context "with default params" do
      it "renders a row" do
        html = render Phlex::Bootstrap::RowComponent.new
        expect(html).to eq '<div class="row"></div>'
      end
    end

    context "with classes" do
      it "renders a row when class is a string" do
        html = render Phlex::Bootstrap::RowComponent.new(class: "foo bar")
        expect(html).to eq '<div class="foo bar row"></div>'
      end

      it "renders a row when class is an array" do
        html = render Phlex::Bootstrap::RowComponent.new(class: ["foo", "bar"])
        expect(html).to eq '<div class="foo bar row"></div>'
      end
    end

    context "with alignment" do
      it "renders a row" do
        html = render Phlex::Bootstrap::RowComponent.new(align: :end)
        expect(html).to eq '<div class="row text-end"></div>'
      end
    end
  end
end
