# app/controllers/reservations_controller.rb:

class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show]

  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def show
    render json: @reservation
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
