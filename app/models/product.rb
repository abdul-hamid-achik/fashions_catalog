class Product < ActiveRecord::Base
 
   search_syntax do

    search_by :text do |scope, phrases|
      columns = [:name, :brand, :category, :color]
      scope.where_like(columns => phrases)
    end

  end

end
