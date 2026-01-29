class PeopleController < ApplicationController
  def view
  end

  def peopleview
    @users=User.all
    puts("------PeopleController----", @users)
  end
end
