# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Bootstrap::BadgeComponent do
  include Phlex::Testing::ViewHelper

  describe "#template" do
    context "with default params" do
      it "renders a badge" do
        html = render Phlex::Bootstrap::BadgeComponent.new
        expect(html).to eq '<span class="badge text-bg-secondary"></span>'
      end
    end

    context "with classes" do
      it "renders a badge when class is a string" do
        html = render Phlex::Bootstrap::BadgeComponent.new(class: "foo bar")
        expect(html).to eq '<span class="foo bar badge text-bg-secondary"></span>'
      end

      it "renders a badge when class is an array" do
        html = render Phlex::Bootstrap::BadgeComponent.new(class: ["foo", "bar"])
        expect(html).to eq '<span class="foo bar badge text-bg-secondary"></span>'
      end
    end

    context "with a variant" do
      it "renders a row" do
        html = render Phlex::Bootstrap::BadgeComponent.new(variant: :success)
        expect(html).to eq '<span class="badge text-bg-success"></span>'
      end
    end
  end
end
