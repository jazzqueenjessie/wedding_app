class RsvpFormController < ApplicationController
  def new
    @rsvp_form = RSVPForm.new
  end

  def create
      begin
        @rsvp_form = RSVPForm.new(params[:rsvp_form])
        @rsvp_form.request = request
        if @rsvp_form.deliver
          flash.now[:notice] = 'Thank you for your message!'
        else
          render :new
        end
      rescue ScriptError
        flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
      end
  end
end
