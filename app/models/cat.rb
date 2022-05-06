require 'action_view'
include ActionView::Helpers::DateHelper
class Cat < ApplicationRecord
    validates :birth_date, :colors, :sex, :name, :description, presence: true
    validates :colors, inclusion: {in %w(white blue green yellow brown black ginger), 
        message: "%{color} is not a valid color!" }

    def age
        @age = Time.now.year -  Cat.birth_date.year
    end
end
