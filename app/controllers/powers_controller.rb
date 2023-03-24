class PowersController < ApplicationController

    def index
    powers = Power.all
    render json: powers,except:[:created_at,:updated_at]
    end

    def show
        begin
        power = power_by_id
        render json: power,except:[:created_at,:updated_at]
        rescue ActiveRecord::RecordNotFound
        render json:{error:"Power not found"},status: :not_found
        end
    end

    def update
        begin
        power = power_by_id
        power.update(allow_params)
        if power.valid?
        render json: power, except:[:created_at,:updated_at],status:200
        else
        render json: {errors:["Validation errors"]},status:403
        end
        rescue ActiveRecord::RecordNotFound
        render json:{error:"Power not found"},status: :not_found
        end
    end
    
    private
    
    def power_by_id
    Power.find(params[:id])
    end

    def allow_params
        params.permit(:description)
    end
    
end
