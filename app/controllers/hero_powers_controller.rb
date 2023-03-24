class HeroPowersController < ApplicationController

    def create
    new_hero_power = HeroPower.create(allow_params)
    if new_hero_power.valid?
    render json: new_hero_power.hero,except:[:created_at,:updated_at], include:[powers:{except:[:created_at,:updated_at]}]
    else
        render json: {errors:["Validation errors"]}
    end
    end

    private
    def allow_params
    params.permit(:strength,:power_id,:hero_id)
    end
end
