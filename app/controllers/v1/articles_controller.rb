#class V1::ArticlesController < ApplicationController
#end

module V1
class ArticlesController < ApplicationController
def index
articles = [
{ id: 123, name: 'The Things' },
{ id: 124, name: 'The Things2' },
]
 
respond_to do |format|
 format.any(:articles_json, :json) do
render json: articles
end
end
end
end
end 