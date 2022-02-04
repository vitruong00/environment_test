# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do   #unit test for title
  subject do #unit test for title
    described_class.new(title: 'harry potter', author: 'J. K. Rowling', price: '20.0', published_date: '2022-06-02')
  end

  it 'is valid with valid title' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  subject do  #unit test for author
    described_class.new(title: 'harry potter', author: 'J. K. Rowling', price: '20.0', published_date: '2022-06-02')
  end

  it 'is valid with valid author' do
    expect(subject).to be_valid
  end

  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
   end

   subject do  #unit test for price
    described_class.new(title: 'harry potter', author: 'J. K. Rowling', price: '20.0', published_date: '2022-06-02')
  end

  it 'is valid with valid price' do
    expect(subject).to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
   end

   subject do  #unit test for date
    described_class.new(title: 'harry potter', author: 'J. K. Rowling', price: '20.0', published_date: '2022-06-02')
  end

  it 'is valid with valid price' do
    expect(subject).to be_valid
  end

  it 'is not valid without a price' do
    subject.published_date = nil
    expect(subject).not_to be_valid
   end
end
