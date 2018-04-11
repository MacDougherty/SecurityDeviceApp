module SecurityDevice
  class SecurityDevicesController < ApplicationController
    before_action :set_security_device, only: [:show, :edit, :update, :destroy]

    # GET /alert/leds
    def index
      @security_devices = ::SecurityDevice::SecurityDevice.all
    end

    # GET /alert/leds/1
    def show
    end

    # GET /alert/leds/new
    def new
      redirect_to security_devices_url, notice: 'You are not authorized to do that.'
    end

    # GET /alert/leds/1/edit
    def edit
    end

    # POST /alert/leds
    def create
      @security_device = ::SecurityDevice::SecurityDevice.new(security_device_params)

      if @security_device.save
        redirect_to security_device_path(@security_device), notice: 'SecurityDevice was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /alert/leds/1
    def update
      if @security_device.update(security_device_params)
        redirect_to security_device_path(@security_device), notice: 'SecurityDevice was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /alert/leds/1
    def destroy
      @security_device.destroy
      redirect_to security_devices_url, notice: 'security_device was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_security_device
        @security_device = ::SecurityDevice::SecurityDevice.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def security_device_params
        params.fetch(:security_device_security_device, {}).permit(:id, :apiotics_instance, :motion_sensor_attributes => ["port_number", "motion", "id"], :sound_sensor_attributes => ["port_number", "data", "id"], :vibration_sensor_attributes => ["port_number", "threshold_exceeded", "id"])
      end
  end
end