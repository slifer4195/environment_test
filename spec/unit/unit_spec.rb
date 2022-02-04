# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Collectbook, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'Sung Rung Yoo', price: '10', time: '2020-03-03')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end
