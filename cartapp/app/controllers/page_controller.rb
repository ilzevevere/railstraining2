class PageController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate_user!, except: [:home, :index, :about] #restric action for user on some pages or use "only:" for specifying 1 action for user to be banned
=======
  before_action :authenticate_user!, except: [:index, :about, :faqs, :contact] #restric action for user on some pages or use "only:" for specifying 1 action for user to be banned
>>>>>>> secondaryrep/master
  
  def home
  end

  def about
  end

<<<<<<< HEAD
=======
  def faqs
  end

>>>>>>> secondaryrep/master
  def contact
  end
  
  def cart
  end
  
end
