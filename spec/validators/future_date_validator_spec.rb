require 'rails_helper'

class Validator
  include ActiveModel::Validations
  attr_accessor :date

  validates :date, future_date: true
end

describe FutureDateValidator do
  subject { Validator.new }

  context 'when date is before current date' do
    before { subject.date = Date.today.yesterday }

    it 'should be invalid' do
      expect(subject.valid?).to be_falsey
    end

    it 'adds an error on model' do
      subject.valid?

      expect(subject.errors.keys).to include(:date)
    end
  end

  context 'when date is equal current date' do
    before { subject.date = Date.today }

    it 'should be invalid' do
      expect(subject.valid?).to be_falsey
    end

    it 'adds an error on model' do
      subject.valid?

      expect(subject.errors.keys).to include(:date)
    end
  end

  context 'when date is greater than current date' do
    before { subject.date = Date.today.tomorrow }

    it 'should be valid' do
      expect(subject.valid?).to be_truthy
    end
  end
end
