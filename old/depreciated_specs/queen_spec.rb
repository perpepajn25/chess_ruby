require_relative "../lib/pieces/queen"

describe Queen do
  test_queen = Queen.new("black")

  describe "move_trace" do
    context "returns array with steps when given index values of a valid move" do
      it "3 square up-right diagonal" do
        expect(test_queen.move_trace(58, 37)).to eq([51, 44, 37])
      end

      it "4 square up-left diagonal" do
        expect(test_queen.move_trace(61, 25)).to eq([52, 43, 34, 25])
      end

      it "2 square down-left diagonal" do
        expect(test_queen.move_trace(2, 16)).to eq([9, 16])
      end

      it "1 square down-right diagonal" do
        expect(test_queen.move_trace(5, 14)).to eq([14])
      end

      it "5 square up" do
        expect(test_queen.move_trace(56, 16)).to eq([48, 40, 32, 24, 16])
      end

      it "4 square right" do
        expect(test_queen.move_trace(0, 4)).to eq([1, 2, 3, 4])
      end

      it "3 square down" do
        expect(test_queen.move_trace(7, 31)).to eq([15, 23, 31])
      end

      it "1 square left" do
        expect(test_queen.move_trace(63, 62)).to eq([62])
      end
    end

    context "given index values corresponding to invalid move" do
      it "returns empty array" do
        expect(test_queen.move_trace(1, 16)).to eq([])
      end
    end
  end
end
