class SearchsController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]

    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    else
      @book =Book.looks(params[:search], params[:word])
    end
  end

end

# 検索モデル　→ parames[:range]
# 検索方法　　→ parames[:search]
# 検索ワード　→ parames[:word]
