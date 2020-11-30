class Search < ApplicationRecord
  belongs_to :user, optional: true

  def all_money
    round((Search.all.count * EUROS_PER_SEARCH) + SEEDED_AMOUNT)
  end

end
