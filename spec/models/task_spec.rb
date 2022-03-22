require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance methods' do
    describe '#laundry?' do
      it 'returns true when the title is laundry' do
        task = Task.create!(title: 'laundry', description: 'dont wear dirty underwear')

        expect(task.laundry?).to be(true)
        task = Task.create(title: 'cooking', description: 'not laundry')
        expect(task.laundry?).to be(false)
      end
    end
  end
end
