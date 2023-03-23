class Dish < ApplicationRecord
    CATEGORIES = ["antipasti", "primi", "secondi", "contorni", "dolci", "bevande"]
  
    has_many  :order_dishes
  
    validates :name, :tagline, :description, :category, :price, presence: true
    validates :name, :tagline, :description, uniqueness: true
    validates :category, inclusion: { in: CATEGORIES }
  
    scope :antipasti, -> { where(category: 'antipasti') }   
    scope :primi, -> { where(category: 'primi') }   
    scope :secondi, -> { where(category: 'secondi') }   
    scope :contorni, -> { where(category: 'contorni') }   
    scope :dolci, -> { where(category: 'dolci') }   
    scope :bevande, -> { where(category: 'bevande') }   
end
