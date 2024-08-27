# == Schema Information
#
# Table name: circles
#
#  id                :bigint           not null, primary key
#  center_x          :decimal(30, 6)   not null
#  center_y          :decimal(30, 6)   not null
#  floating_required :boolean          default(FALSE), not null
#  max_x             :decimal(30, 6)
#  max_y             :decimal(30, 6)
#  min_x             :decimal(30, 6)
#  min_y             :decimal(30, 6)
#  radius            :decimal(30, 6)   not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  test_id           :integer          not null
#
class Circle < ApplicationRecord
  include CircleCalculation
  belongs_to :test

  validates :center_x, presence: true
  validates :center_y, presence: true
  validates :radius, presence: true
  validates :radius, numericality: { greater_than_or_equal_to: 0 }
end
