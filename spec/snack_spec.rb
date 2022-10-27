require "snack"

describe Store do
  
  new_biscuit = Store.new()
  # amount = [5, 20, 50]



  describe "#buy" do
    it "return the item if the correct amount is provided" do
      expect(new_biscuit.buy(:biscuit, [5, 20, 50])).to eq(:biscuit)
    end

    it "return the value of the short fall in user total amount if it's insufficient" do
      expect(new_biscuit.buy(:biscuit, [5, 20, 10])).to eq(40)
    end

    it "not return any item if the item is not in stock" do
      expect(new_biscuit.buy(:apple, [5, 20, 10])).to eq("not in stock")
    end
  end

end




# scale