require 'rails_helper'

describe Play do
  context "Instance methods" do
    context "#score_word" do
      it "scores the word" do
        play = create(:play, word: "assess")
        # # binding.pry
        # play.letter_scores
        # binding.pry
        expect(play.score).to eq(6)
      end
    end
  end
end
