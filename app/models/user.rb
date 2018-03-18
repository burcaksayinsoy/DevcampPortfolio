class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable

  validates_presence_of :name

  def first_name
    begin
      self.name.split.first
    rescue SyntaxError => e
      puts "Error Occured: #{e}"
    end
  end

  def last_name
    self.name.split.last
  end
end
