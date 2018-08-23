class TransportsController < ApplicationController
  def index
    @transports = Transport.all
  end

  def new; end

  def create; end

  def edit; end

  def update; end

  def destroy; end
end
