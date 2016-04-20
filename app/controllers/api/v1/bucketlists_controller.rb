class Api::V1::BucketlistsController < ApplicationController

  def create
    bucketlist = Bucketlist.create(bucketlist_params)
    render json: bucketlist
  end

   def index
    bucketlists = Bucketlist.all

    if bucketlists
      render json: bucketlists
    else
      render json: { error: "no bucket have been created" }
    end
  end

  private

  def bucketlist_params
    params.permit(:name)
  end
end
