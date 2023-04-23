# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Bootstrap::IconComponent do
  include Phlex::Testing::ViewHelper

  describe "#template" do
    context "with default params" do
      it "renders an icon" do
        html = render Phlex::Bootstrap::IconComponent.new(name: "dog")
        expect(html).to eq '<i class="bi bi-dog"></i>'
      end
    end

    context "with classes" do
      it "renders an icon" do
        html = render Phlex::Bootstrap::IconComponent.new(name: "dog", class: "foo bar")
        expect(html).to eq '<i class="bi bi-dog foo bar"></i>'
      end
    end

    context "with a variant" do
      it "renders an icon" do
        html = render Phlex::Bootstrap::IconComponent.new(name: "dog", variant: :success)
        expect(html).to eq '<i class="bi bi-dog text-success"></i>'
      end
    end
  end
end
