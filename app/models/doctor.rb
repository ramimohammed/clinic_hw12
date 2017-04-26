class Doctor < ActiveRecord::Base
     has_many :patients, dependent: :destroy
     
     
     
      validates :first_name, :presence => true   
    
      validates :last_name, :presence => true
      validates_uniqueness_of :license_number
     validates_uniqueness_of :email
    validates_uniqueness_of :phone_number
    validates_format_of :phone_number, with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/,:message => "- must be like 123-456-7890"
    validates_format_of :email, :with => /\A([^@\s]+)@((gmail)\.+com)\Z/i, :on => :create ,:message =>"must be like  name@gmail.com"  


end
