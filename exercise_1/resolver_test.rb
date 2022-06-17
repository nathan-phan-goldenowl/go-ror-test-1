require_relative './resolver.rb'

describe :extract_pair do
  context 'when resultable list is given' do
    # ƒ(10, [3, 4, 5, 6, 7]) -> [(4, 6), (3, 7)]
    let(:sum) { 10 }
    let(:list) { [3, 4, 5, 6, 7] }

    it 'returns the expected result' do
      expect(f(sum, list)).to eq([[4, 6], [3, 7]])
    end
  end

  context 'when no resultable list is given' do
    # ƒ(100, [3, 4, 5, 6, 7]) -> []
    let(:sum) { 100 }
    let(:list) { [3, 4, 5, 6, 7] }

    it 'returns the expected result' do
      expect(f(sum, list)).to eq([])
    end
  end
end
