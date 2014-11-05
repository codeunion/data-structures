require_relative '../linked_list'

describe LinkedList do
  describe '.new' do
    it 'returns an empty list' do
      expect(LinkedList.new).to be_empty
    end
  end

  describe '#unshift' do
    let(:list) { LinkedList.new }

    it 'increases length of list by 1' do
      expect {
        list.unshift(5)
      }.to change(list, :length).by(1)
    end

    it 'prepends the given value to the list' do
      expect {
        list.unshift(5)
      }.to change(list, :first).from(nil).to(5)
    end

    it 'returns the list itself' do
      expect(list.unshift(5)).to eq(list)
    end

    context 'when list is empty' do
      let(:list) { LinkedList.new }

      it 'flags the list as non-empty' do
        expect {
          list.unshift(5)
        }.to change(list, :empty?).from(true).to(false)
      end
    end
  end

  describe '#shift' do
    let(:list) { LinkedList.new }
    context 'when the list is non-empty' do
      before { list.unshift(5) }

      it 'flags the list as empty' do
        expect {
          list.shift
        }.to change(list, :empty?).from(false).to(true)
      end

      it 'returns the first value on the list' do
        list.unshift(12345)

        expect(list.shift).to eq(12345)
      end
    end
  end

  describe '#head' do
  end
end
