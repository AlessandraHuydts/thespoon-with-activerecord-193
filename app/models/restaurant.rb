class Restaurant < ApplicationRecord
  # name, address, stars

  def downcased_name
    # instance method
    # self.name
    name.downcase
  end
end
