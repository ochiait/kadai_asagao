class Member < ActiveRecord::Base
  class << self
    def search(query)
      rel = order("number")
      if query.present?
        query.strip!
        if query =~ /\A\d+\z/
          rel = rel.where(number: query)
        else
        rel = rel.where("name LIKE ? OR full_name LIKE ?",
          "%#{query}%", "%#{query}%")
        end
      end
      rel
    end
  end
end
