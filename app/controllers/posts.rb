ContactApp::App.controllers :posts do
  get :index do
    @inquiry = Inquiry.new
    render 'posts/index'
  end

  post :confirm do
    @inquiry = Inquiry.new(params[:inquiry])
    @inquiry.save
    SampleMailer.template_example(@inquiry).deliver
    flash[:hoge] = 'デモとしてflashを表示しています。'
    redirect url(:posts, :index)
  end
end
