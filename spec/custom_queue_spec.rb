require 'spec_helper'

describe CustomQueue do
  let(:queue) { CustomQueue.new }

  describe 'Initialization' do
    it 'assigns a size of 0' do
      expect(queue.size).to eq 0
    end

    it 'assigns an empty items array' do
      expect(queue.items).to eq []
    end
  end

  describe 'Methods' do
    describe '#enqueue' do
      it 'adds an item' do
        queue.enqueue(1)
        expect(queue.items).to eq [1]
      end
    end

    describe '#dequeue' do
      context 'with existing items' do
        before do
          queue.enqueue(1)
          queue.enqueue(2)
        end

        it 'removes the first item' do
          queue.dequeue
          expect(queue.items).to eq [2]
        end
      end

      context 'without existing items' do
        it 'returns nil' do
          expect(queue.dequeue).to be_nil
        end
      end
    end

    describe '#size' do
      before { queue.enqueue(1) }

      it 'is the number of items' do
        expect(queue.size).to eq 1
      end
    end
  end
end

