describe BinarySearchTree do
  describe "#insert" do
    context "it returns the bst with the new node inserted" do

      it "inserts node into an empty tree" do
        tree = BinarySearchTree.new
        tree.insert(1)
        expect(tree.root.value).to eq(1)
      end

      it "inserts into an existing tree" do
        tree = BinarySearchTree.new
        expect(tree.insert(5).root.value).to eq(5)
        expect(tree.insert(3).root.left.value).to eq(3)
        expect(tree.insert(11).root.right.value).to eq(11)
      end

      it "it doesn't insert a duplicate value" do
        tree = BinarySearchTree.new
        tree.insert(11)
        expect(tree.insert(11)).to eq(nil)
      end
    end
  end

  describe "#search" do
    context "it searches the bst to find a target value" do 

      it "it returns nil if the tree is empty" do
        tree = BinarySearchTree.new 
        expect(tree.search(8)).to eq(nil)
      end

      it "it returns the node with the target value" do
        tree = BinarySearchTree.new
        tree.insert(5)
        tree.insert(62)
        tree.insert(3)
        expect(tree.search(62).value).to eq(62)
      end

      it "it returns nil if target value is not found" do
        tree = BinarySearchTree.new
        tree.insert(5)
        tree.insert(62)
        tree.insert(3)
        expect(tree.search(11)).to eq(nil)
      end
    end
  end
end
