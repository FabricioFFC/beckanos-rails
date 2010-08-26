class MessagesController < ApplicationController

  def index
    @message = Message.new
    @messages = Message.all(:order => "created_at DESC")
  end
  
  def create
    @message = Message.new(params[:message])
    @message.user_id = current_user.id
    respond_to do |format|
      if @message.save
        format.html { redirect_to(messages_path, :notice => 'Mensagem compartilhada!') }
        format.xml  { render :xml => @message, :status => :created, :location => @message }
      else
        format.html { render :action => "index" }
        format.xml  { render :xml => @message.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def opinion
    @opinion = Opinion.new(:message_id => params[:message],:opinion => params[:opinion],:user_id => current_user.id)
    if @opinion.save
      redirect_to(messages_path, :notice => 'Sua opinião foi salva.')
    else
      redirect_to(messages_path, :notice => 'Você já opinou nessa mensagem.')
    end
  end   
  
end
