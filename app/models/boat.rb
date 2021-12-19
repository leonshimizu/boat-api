class Boat < ApplicationRecord
  def self.to_csv
    attributes = %w{name color length boat_type}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |boat|
        csv << attributes.map{ |attr| boat.send(attr) }
      end
    end
  end

  def self.to_csv
    attributes = %w{name length color boat_type}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |boat|
        csv << attributes.map{ |attr| boat.send(attr) }
      end
    end
  end

  # def name
  #   "#{first_name} #{last_name}"
  # end
end
