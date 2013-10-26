class StaticPagesController < ApplicationController
  def home
    @page_tab = 'home'
  end
  def about
    @page_tab = 'about'
  end
  def contact
    @page_tab = 'contact'
  end
  def faq
    @page_tab = 'faq'
  end
end
