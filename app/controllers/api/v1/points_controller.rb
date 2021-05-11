class Api::V1::PointsController < ApplicationController
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

    private

    def point_params
        params.require(:point).permit(:title, :coordinates)
    end
end
