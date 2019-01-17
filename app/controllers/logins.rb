ContactApp::App.controllers :logins do
  def show
    render 'new'
    end

  def create
    user = Contact.find_by_name params[:name]
    if user && user.authenticate(params[:pass])
      # セッションのキー:user_idへユーザーのIDを登録
      session[:user_id] = user.id
      redirect_to root_path
    else
      # flash変数にメッセージをセット
      flash.now.alert = 'もう一度入力してください。'
      render 'new'
    end
  end
end
