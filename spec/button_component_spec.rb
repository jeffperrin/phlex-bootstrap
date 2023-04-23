# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Bootstrap::ButtonComponent do
  include Phlex::Testing::ViewHelper

  describe "#template" do
    it "renders a button" do
      html = render Phlex::Bootstrap::ButtonComponent.new { "Do it" }
      expect(html).to eq '<button class="btn btn-secondary" type="button">Do it</button>'
    end

    context "with a variant" do
      it "renders a button" do
        html = render Phlex::Bootstrap::ButtonComponent.new(variant: :primary)
        expect(html).to eq '<button class="btn btn-primary" type="button"></button>'
      end
    end

    context "with a size" do
      it "renders a button" do
        html = render Phlex::Bootstrap::ButtonComponent.new(size: :lg)
        expect(html).to eq '<button class="btn btn-secondary btn-lg" type="button"></button>'
      end
    end

    context "with a type" do
      it "renders a button" do
        html = render Phlex::Bootstrap::ButtonComponent.new(type: :submit)
        expect(html).to eq '<button class="btn btn-secondary" type="submit"></button>'
      end
    end

    context "with a tooltip" do
      it "renders a button" do
        html = render Phlex::Bootstrap::ButtonComponent.new(tooltip: "Does a thing")
        expect(html).to eq '<button class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-title="Does a thing" type="button"></button>'
      end
    end

    context "with a dismissal" do
      it "renders a button" do
        html = render Phlex::Bootstrap::ButtonComponent.new(dismiss: :modal)
        expect(html).to eq '<button class="btn btn-secondary" data-bs-dismiss="modal" type="button"></button>'
      end
    end

    context "with extra array classes" do
      it "renders a button" do
        html = render Phlex::Bootstrap::ButtonComponent.new(class: ["one", "two"])
        expect(html).to eq '<button class="btn btn-secondary one two" type="button"></button>'
      end
    end

    context "with extra string classes" do
      it "renders a button" do
        html = render Phlex::Bootstrap::ButtonComponent.new(class: "one two")
        expect(html).to eq '<button class="btn btn-secondary one two" type="button"></button>'
      end
    end

    context "with inner html" do
      it "renders a button" do
        html = render Phlex::Bootstrap::ButtonComponent.new { |btn| btn.span { "Foo" } }
        expect(html).to eq '<button class="btn btn-secondary" type="button"><span>Foo</span></button>'
      end
    end
  end
end
