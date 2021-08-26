class SearchsController < ApplicationController
 
  def search
    @model = params["model"]
    @content = params["content"]
    @method = params["method"]
    @records = search_for(@model, @content, @method)
  end

private
 def search_for(model, content, method)
   if model == 'item'
    if method == 'perfect'
     Item.where(name: content)
    else
     Item.where('name LIKE ?', '%'+content+'%')
    end
   elsif model == 'genre'
     if method == 'perfect'
      Genre.where(name: content)
     else
      Genre.where('name LIKE ?', '%'+content+'%')
     end
   end
 end
end
