# frozen_string_literal: true

RSpec.describe BubbleSort do
  describe '#bubble_sort' do
    it 'enter not an array' do
      expect(bubble_sort({})).to eql([])
    end
    it 'enter an empty array' do
      expect(bubble_sort([])).to eql([])
    end
    it 'an array with only one item' do
      expect(bubble_sort([1])).to eql([1])
    end
    it 'an array to sort' do
      expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eql([0, 2, 2, 3, 4, 78])
    end
  end

  describe '#bubble_sort_by' do
    it 'enter not an array' do
      expect(bubble_sort_by({}) { |left, right| left.length - right.length }).to eql([])
    end

    it 'enter an empty array' do
      expect(bubble_sort_by([]) { |left, right| left.length - right.length }).to eql([])
    end

    it 'an array with only one item' do
      expect(bubble_sort_by([1]) { |left, right| left.length - right.length }).to eql([1])
    end

    it 'bubble_sort_by' do
      expect(bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }).to eql(%w[hi hey hello])
    end
  end
end
