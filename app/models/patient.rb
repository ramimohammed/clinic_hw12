class Patient < ActiveRecord::Base
  belongs_to :doctor
  
  
  validates_presence_of :first_name, message: 'please fill the blank'
  validates_presence_of :last_name, message: 'please fill the blank'
  validates_uniqueness_of :first_name
  validates_uniqueness_of :last_name
  
  validates_uniqueness_of :phone
  validates_format_of :phone,:with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/,:message => "- Phone number should be like  123-456-7890"
  
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((gmail)\.+com)\Z/i, :on => :create,:message =>"must like name@gmail.com"
    
  

  
end
