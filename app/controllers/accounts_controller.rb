class AccountsController < ApplicationController
  
  include Databasedotcom::Rails::Controller
  
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def search
    config = YAML.load_file(File.join(::Rails.root, 'config', 'databasedotcom.yml'))
    client = Databasedotcom::Client.new(config)          
    client.authenticate :username => config[:username], :password => config[:password]
    @accounts = client.query("select id, name from account where name like 'United%'")
  end

end
