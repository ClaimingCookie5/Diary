require 'diary'

describe Diary do

  describe '.all' do
    it 'shows all diary entry titles' do
      expect(Diary.all).to include('Diary entry 1')
    end
  end

end