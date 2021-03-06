ThinkingSphinx::Index.define :location, :with => :active_record do 
  indexes city 
  
  has "RADIANS(locations.latitude)",  :as => :latitude,  :type => :float
  has "RADIANS(locations.longitude)", :as => :longitude, :type => :float
end 

ThinkingSphinx::Index.define :user, :with => :active_record do 
  indexes name, :as => :user, :sortable => true 
  indexes religion, birthday, about_me, career, sexuality, children, user_smoke, user_drink, gender, ethnicity, education, username
  has created_at, updated_at 
  has(:id, :as => :user_id)
  has(:zip_code, :as => :zip_code, :type => :integer)
  set_property :wordforms => 'lib/word.txt'
end 
