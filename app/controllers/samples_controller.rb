class SamplesController < ApplicationController
    def index
      # pluck     
      users = [{
        name: "エンジニアを目指す大学生",
        age: 19
      }, {
        name: "できたてほやほやエンジニア",
        age: 30
      }, {
        name: "できたてほやほやエンジニア 第二章",
        age: 31
      }]
  
      # @names = users.pluck(:name)

      # index_by
      # @users_by_age = users.index_by { |user| user[:age] }
    end
end
  