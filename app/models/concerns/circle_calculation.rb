module CircleCalculation
  extend ActiveSupport::Concern

  included do
    before_save :update_calc_fields
  end

  def update_calc_fields
    self.min_x = center_x - radius
    self.max_x = center_x + radius
    self.min_y = center_y - radius
    self.max_y = center_y + radius
  end
end
