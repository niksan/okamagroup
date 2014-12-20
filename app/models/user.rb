class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles

  def has_roles?(role)
    if role.is_a? Symbol
      !!self.roles.where(name: role.to_s.downcase).try(:first)
    elsif Array
      role.each do |r|
        return(true) if !!self.roles.where(name: r.to_s.downcase).try(:first)
      end
      false
    end
  end

  def has_role?(role)
    !!self.roles.where(name: role.to_s.downcase).try(:first)
  end

end
