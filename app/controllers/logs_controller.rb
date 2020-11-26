class LogsController < ApplicationController
before_action :find_loggable

    def new
      @log = Log.new
    end

    def create
      @log = @loggable.logs.new log_params

      if @log.save
        redirect_to @loggable, notice: 'Your log was successfully posted!'
      else
        redirect_to @loggable, notice: "Your log wasn't posted!"
      end
    end

    private

    def log_params
      params.require(:log).permit(:body)
    end

    def find_loggable
      @loggable = Log.find_by_id(params[:log_id]) if params[:log_id]
      @loggable = PetriDish.find_by_id(params[:petri_dish_id]) if params[:petri_dish_id]
    end

end
