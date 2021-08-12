require 'rails_helper'

describe Post, type: :model do
  
  context 'relations' do
    it { is_expected.to belong_to(:user) }
  end

  context 'validations' do
    it { should validate_presence_of(:title) }    
    it { should validate_presence_of(:summary) }
    it { should validate_presence_of(:body) }    
  end

  
end
