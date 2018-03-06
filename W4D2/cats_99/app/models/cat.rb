# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  validates :birth_date, presence: true
  validates :name, presence: true
  validates :color, presence: true
  validates :sex, presence: true
  validates :description, presence: true

  COLORS = %w(black red green brown blue purple cyan gray yellow white).freeze

  validates :color, inclusion: { in: COLORS, message: 'It is not a valid color'}
  validates :sex, inclusion: { in: ['M', 'F'], message: 'it is not a valid sex)'}


end
