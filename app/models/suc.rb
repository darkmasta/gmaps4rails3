class Suc < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :longitude, :name, :suc, :suclu, :suctipi, :tarih

  acts_as_gmappable

  def gmaps4rails_address
    #describe how to retrieve the address from your model,
    #if you use directly a db column, you can dry your code, see wiki
    address 
  end

  def gmaps4rails_infowindow
    "<p>Suctipi:#{suctipi}</p></ br>
     <p>Tarih:#{tarih}</p></ br>
     <p>Adres:#{address}</p></ br>
     <p>Sucu Isleyen:#{suclu}</p></ br>
     "
  end

  def gmaps4rails_sidebar
    name
  end
  
end
