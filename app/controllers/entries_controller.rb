class EntriesController < ApplicationController

  def new
    @place = Place.find_by(id: params[:place_id])  # Find the place
    
    if @place.nil?
      redirect_to "/places", notice: "Place not found"  # Redirect if place is missing
    else
      @entry = Entry.new  # Create a new entry instance
    end
  end


  def create
    # find the Place
    @place = Place.find_by({ "id" => params["place_id"] })

    # start with a new Entry
    @entry = Entry.new

    # assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = @place["id"]  # Assign the place ID

    # save Entry row
    @entry.save

    # redirect user
    redirect_to "/places/#{@place["id"]}"
  end
end