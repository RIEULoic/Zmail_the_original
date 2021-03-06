class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    @email = Email.new('object' => Faker::Lorem.sentence, 'body' => Faker::Lorem.paragraph)
    @email.save
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end
=begin
  private
  
  def email_params
    params.permit(object: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs)
  end
=end
  def show
    @email = Email.find(params[:id]) 
    

    respond_to do |format|
      format.html {redirect_to email_path}
      format.js {}
    end
  end
end
