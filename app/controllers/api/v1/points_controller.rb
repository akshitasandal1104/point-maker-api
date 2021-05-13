class Api::V1::PointsController < ApplicationController
    before_action :set_point, only: [:update, :destroy]
    skip_before_filter :verify_authenticity_token  


    def index
        render json: Point.all
    end

    def create
        point = Point.new(point_params)
        if point.save!
            render json: { success: "Point has been created successfully." }, status: :created
        else
            render json: { errors: point.errors }, status: :unprocessable_entity
        end
    end

    def update
        if @point.update(point_params)
            render json: { success: "Point has been updated successfully." }, status: :ok
        else
            render json: { errors: point.errors }, status: :unprocessable_entity
        end
    end

    def destroy
        if @point.destroy
            render json: { success: "Point has been deleted successfully." }, status: :ok
        else
            render json: { errors: point.errors }, status: :unprocessable_entity
        end
    end

    private

    def point_params
        params.require(:point).permit(:title, :coordinates)
    end

    def set_point
        @point = Point.where(id: params[:id]).first
    end
end
