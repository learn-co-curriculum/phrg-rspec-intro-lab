require "spec_helper"

RSpec.describe BabyFood do
  # Move your tests into logical groupings with context

  it "puts 'num nums' for small peas" do
    expect { BabyFood.new(kind: "peas", size: "small") }.to output("num nums\n").to_stdout
  end

  # These tests are pending until they are passed a block. Follow the formula for 'small peas' to make these work.
  it "puts 'WAAAAHHH!' for large peas" do
    expect { BabyFood.new(kind: "peas", size: "large") }.to output("WAAAAHHH!\n").to_stdout
  end

  it "puts 'wwwwWWWWWAAAHHHHH!' for small banana slices" do
    expect { BabyFood.new(kind: "banana slices", size: "small") }.to output("wwwwWWWWWAAAHHHHH!\n").to_stdout
  end

  it "puts 'num nums' small carrots" do
    expect { BabyFood.new(kind: "carrots", size: "small") }.to output("num nums\n").to_stdout
  end

  it "puts 'Whhhaaaa WAAAAHHHHH!!' for hard small peas" do
    expect { BabyFood.new(kind: "peas", size: "small", texture: "hard") }.to output("Whhhaaaa WAAAAHHHHH!!\n").to_stdout
  end

  # Can you write one test using iteration to check all the FAVORITE_KINDS of baby food?

  # This spec file is complete when all favorite foods, invalid size, and invalid texture scenarios have been tested.
end
