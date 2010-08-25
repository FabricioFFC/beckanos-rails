class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(params[:message])
    @message.user_id = current_user.id
    respond_to do |format|
      if @message.save
        format.html { redirect_to(messages_path, :notice => 'Mensagem compartilhada!') }
        format.xml  { render :xml => @message, :status => :created, :location => @message }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @message.errors, :status => :unprocessable_entity }
      end
    end
  end   
  
end
