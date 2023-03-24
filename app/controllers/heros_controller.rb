class HerosController < ApplicationController
    def index
        heroes  = Hero.all
        render json: heroes,except:[:created_at,:updated_at],status: :ok
    end

    def show
        begin
        hero = Hero.find(params[:id])
        render json: hero,except:[:created_at,:updated_at],include:[powers:{except:[:created_at,:updated_at]}]
        rescue ActiveRecord::RecordNotFound
        render json:{error:"Hero not found"},status: :not_found
        end 
    end
end
