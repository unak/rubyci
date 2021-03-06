class Server < ActiveRecord::Base
  validates :name, :length => { :in => 3..30 }
  validates :arch, :inclusion => { :in => %w(- x86 x64),
        :message => "%{value} is not a valid arch" }
  validates :os, :length => { :in => 1..20 }
  validates :version, :length => { :in => 1..20 }
  validates :uri, :length => { :in => 20..200 }
  attr_accessible :name, :arch, :os, :version, :uri

  def recent_uri(branch)
    [uri.sub(/\/$/, ''), 'ruby-' + branch, 'recent.html'].join('/')
  end
end
