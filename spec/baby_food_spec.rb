require "spec_helper"

RSpec.describe BabyFood do
  # Move your tests into logical groupings with context

    describe "#initialize" do
    let(:favorite_small_soft_peas) do
      { kind: "peas", size: "small", texture: "soft"}
    end

    let(:favorite_large_soft_peas) do
      { kind: "peas", size: "large", texture: "soft"}
    end

    let(:unliked_small_soft_banana) do
      { kind: "banana slices", size: "small", texture: "soft"}
    end

    let(:favorite_small_soft_carrots) do
      { kind: "peas", size: "small", texture: "soft"}
    end

    let(:favorite_small_hard_peas) do
      { kind: "peas", size: "small", texture: "hard"}
    end


    it "puts 'num nums' for small peas" do
      expect { BabyFood.new(favorite_small_soft_peas) }.to output("num nums\n").to_stdout
    end

    # These tests are pending until they are passed a block. Follow the formula for 'small peas' to make these work.
    it "puts 'WAAAAHHH!' for large peas" do
      expect { BabyFood.new(favorite_large_soft_peas) }.to output("WAAAAHHH!\n").to_stdout
    end
    it "puts 'wwwwWWWWWAAAHHHHH!' for small banana slices" do
      expect { BabyFood.new(unliked_small_soft_banana) }.to output("wwwwWWWWWAAAHHHHH!\n").to_stdout
    end
    it "puts 'num nums' small carrots" do
      expect { BabyFood.new(favorite_small_soft_carrots) }.to output("num nums\n").to_stdout
    end
    it "puts 'Whhhaaaa WAAAAHHHHH!!' for hard small peas" do
      expect { BabyFood.new(favorite_small_hard_peas) }.to output("Whhhaaaa WAAAAHHHHH!!\n").to_stdout
    end

    # Can you write one test using iteration to check all the FAVORITE_KINDS of baby food?

    it "is valid for all favorites" do
      foods = [
        "peas",
        "carrots",
        "apple sauce",
        "peach"
      ]
      foods.each do |food|
        expect{ BabyFood.new(kind: food, size: "small", texture: "soft")}.to output("num nums\n").to_stdout
      end
    end
    # This spec file is complete when all favorite foods, invalid size, and invalid texture scenarios have been tested.
  end
end
