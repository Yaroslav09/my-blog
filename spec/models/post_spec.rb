require 'rails_helper'

describe Post, type: :model do
  
  context 'relations' do
    it { is_expected.to belong_to(:user) }
  end

  context 'validations' do
    [:title, :summary, :body].each do |field|
      it { is_expected.to validate_presence_of(field) }    
    end         
  end

  
end
