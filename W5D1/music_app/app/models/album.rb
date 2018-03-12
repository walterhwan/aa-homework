# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  band_id    :integer          not null
#  title      :string           not null
#  year       :integer          not null
#  is_studio? :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ApplicationRecord
  validates :band_id, presence: true
  validates :yr, presence: true
  validates :title, presence: true

  belongs_to :band

end
