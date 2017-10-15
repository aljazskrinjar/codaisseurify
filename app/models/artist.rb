class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_one :photo, dependent: :destroy

  @desc = false

  validates :name, presence: true
  validates :age, numericality: { only_integer: true, :greater_than_or_equal_to => 3 }, presence: true
  validates :bio, presence: true, length: { maximum: 500 }



  def self.descender
     @desc = true
  end

  def self.descenderOff
     @desc = false
  end

  def self.descenderValue
    @desc

  end

  

end
