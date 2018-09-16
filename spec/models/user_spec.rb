require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) } # User.new({})
  # let(:user) { create(:user) } ... same as User.create({})
  # build does not save. Create is new + save

  it 'ensures name presence' do
    # user = User.new(name: 'Joe', email: 'sample@example.com').save
    user.name = nil
    expect(user.save).to eq(false)
  end

  it 'ensures email presence' do
    user.email = nil
    expect(user.save).to eq(false)
  end

  it 'should save successfully' do
    expect(user.save).to eq(true)
  end

  # pending "add some examples to (or delete) #{__FILE__}"
end
