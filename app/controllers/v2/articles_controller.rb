#class V2::ArticlesController < ApplicationController
#end

module V2
class ArticlesController < ApplicationController
def index
articles = [
{ id: 123, name: 'The Things3' },
{ id: 124, name: 'The Things4' },
{ id: 125, name: 'The Things5' },
{ id: 126, name: 'The Things6' },
{ id: 127, name: 'The Things6' },
]
 
respond_to do |format|
 format.any(:articles_json, :json) do
render json: { articles: articles }
end
end
end
end
end 
