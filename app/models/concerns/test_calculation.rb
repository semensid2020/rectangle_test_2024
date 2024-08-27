module TestCalculation
  extend ActiveSupport::Concern

  included do
    before_save :update_calc_fields
  end

  def update_calc_fields
    self.min_x = circles.minimum(:min_x)
    self.max_x = circles.maximum(:max_x)
    self.min_y = circles.minimum(:min_y)
    self.max_y = circles.maximum(:max_y)
  end
end
