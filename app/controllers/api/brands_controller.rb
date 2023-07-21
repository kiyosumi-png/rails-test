class Api::BrandsController < ApplicationController
    def index
      @brands = [{
        id: "hogehgoe",
        name: "できたてほやほやエンジニア"
      }]
    end
end