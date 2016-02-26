class User
  include Mongoid::Document
  field :username, type: String
  field :encrypted_password, type: String

  before_save :md5_password

  attr_accessor :password, :password_confirmation

  def md5_password
    if password 
      require 'digest/md5'
      self.encrypted_password = Digest::MD5.hexdigest(self.password)
    end
  end

end
