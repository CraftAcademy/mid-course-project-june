class HomepageController < ApplicationController
  def index
    @orphanages = [{name: 'Childrens Home', description: 'Lorem ipsum...'},
                   {name: 'Poor Children', description: 'Lorem ipsum...'}]
  end
end
