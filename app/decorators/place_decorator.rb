class PlaceDecorator < ApplicationDecorator
  delegate_all
  decorates_association :trip

end
