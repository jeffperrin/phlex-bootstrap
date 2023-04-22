# frozen_string_literal: true

require "spec_helper"

RSpec.describe Phlex::Bootstrap::CardComponent do
  include Phlex::Testing::ViewHelper

  describe "#template" do
    context "with default params" do
      it "renders a card" do
        html = render Phlex::Bootstrap::CardComponent.new
        expect(html).to eq '<div class="card"></div>'
      end
    end

    context "with extra classes" do
      it "renders a card with extra classes when passed in as a string" do
        html = render Phlex::Bootstrap::CardComponent.new(class: "one two")
        expect(html).to eq '<div class="card one two"></div>'
      end

      it "renders a card with extra classes when passed in as an array" do
        html = render Phlex::Bootstrap::CardComponent.new(class: ["one", "two"])
        expect(html).to eq '<div class="card one two"></div>'
      end
    end

    context "with a header" do
      context "when there is no header content" do
        it "renders a header in the card" do
          html = render Phlex::Bootstrap::CardComponent.new(class: ["one", "two"]) do |c|
            c.header(class: ["three"])
          end
          expect(html).to eq '<div class="card one two"><div class="card-header three"></div></div>'
        end
      end

      context "when there is header content" do
        it "renders a header with inner html" do
          html = render Phlex::Bootstrap::CardComponent.new(class: ["one", "two"]) do |c|
            c.header(class: ["three"]) { "test" }
          end
          expect(html).to eq '<div class="card one two"><div class="card-header three">test</div></div>'
        end
      end
    end

    context "with a footer" do
      context "when there is no footer content" do
        it "renders a header in the card" do
          html = render Phlex::Bootstrap::CardComponent.new(class: ["one", "two"]) do |c|
            c.footer(class: ["three"])
          end
          expect(html).to eq '<div class="card one two"><div class="card-footer three"></div></div>'
        end
      end

      context "when there is footer content" do
        it "renders a footer with inner html" do
          html = render Phlex::Bootstrap::CardComponent.new(class: ["one", "two"]) do |c|
            c.footer(class: ["three"]) { "test" }
          end
          expect(html).to eq '<div class="card one two"><div class="card-footer three">test</div></div>'
        end
      end
    end

    context "with a body" do
      context "when there is no body content" do
        it "renders a header in the card" do
          html = render Phlex::Bootstrap::CardComponent.new(class: ["one", "two"]) do |c|
            c.body(class: ["three"])
          end
          expect(html).to eq '<div class="card one two"><div class="card-body three"></div></div>'
        end
      end

      context "when there is body content" do
        it "renders a body with inner html" do
          html = render Phlex::Bootstrap::CardComponent.new(class: ["one", "two"]) do |c|
            c.body(class: ["three"]) { c.span { "test" } }
          end
          expect(html).to eq '<div class="card one two"><div class="card-body three"><span>test</span></div></div>'
        end
      end
    end
  end
end
