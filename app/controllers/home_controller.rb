class HomeController < ApplicationController
  def write
  end
  
  def write_process
    @msg = Message.new
    
    @msg.name = params[:username]
    @msg.address = params[:usermail]
    @msg.content = params[:message]
    
    @msg.save
    
    redirect_to '/lists'
  end

  def lists
    @msgs = Message.all.order("id desc")
  end
  
  def destroy
    @delete = Message.find(params[:id])
    @delete.destroy
    
    redirect_to '/lists'
  end
  
  def update_view
    @update = Message.find(params[:id])
  end
  
  def update
    @update = Message.find(params[:id])
    
    @update.name = params[:username]
    @update.address = params[:usermail]
    @update.content = params[:message]
    
    @update.save
    
    redirect_to '/lists'
  end
  
end
