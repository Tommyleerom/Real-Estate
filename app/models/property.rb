class Property < ApplicationRecord
  belongs_to :agent
  has_one :address

  def self.avaliable
    select('a.first_name, last_name, sold, email, a.id AS agent_id, price, p.id AS property_id, beds, baths, sq_ft, street, zip, city')
    .from('agents AS a')
    .joins('INNER JOIN properties AS p ON p.agent_id = a.id INNER JOIN addresses AS ad ON ad.property_id = p.id')
    .where('p.sold <> TRUE')
    .order('a.id')
  end
end
