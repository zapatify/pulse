class Team < ActiveRecord::Base
  require 'csv'

  belongs_to :division
  has_many :athlete, :dependent => :delete_all

  def self.import(file)
  	CSV.foreach(file.path, :headers => true) do |row|
      Team.create!(row.to_hash)
    end
  end



end
