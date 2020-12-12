class Experience < ActiveHash::Base
  self.data = [
    { id: 1, name: '競技経験不問' },
    { id: 2, name: '競技経験者のみ' }
  ]

  include ActiveHash::Associations
  has_many :recruitments
  
end