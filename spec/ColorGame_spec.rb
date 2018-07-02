require "color"

RSpec.describe "ColorGame" do

  new_game = ColorGame.new 
  
  describe "find_best_color(fav)" do
    it "if given orange it gives yellow" do 
      best_color = new_game.find_best_color("Orange")
      expect(best_color).to eq("Yellow")
    end
  end
end