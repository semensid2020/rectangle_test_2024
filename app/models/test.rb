# == Schema Information
#
# Table name: tests
#
#  id                :bigint           not null, primary key
#  floating_required :boolean          default(FALSE), not null
#  max_x             :decimal(30, 6)
#  max_y             :decimal(30, 6)
#  min_x             :decimal(30, 6)
#  min_y             :decimal(30, 6)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Test < ApplicationRecord
  include TestCalculation

  has_many :circles, dependent: :destroy
end
