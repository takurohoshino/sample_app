ContactApp::App.controllers :posts do
  get :index do
    @inquiry = Inquiry.new
    render 'posts/index'
  end

  post :confirm do
    @inquiry = Inquiry.new(params[:inquiry])
    @inquiry.save
    SampleMailer.template_example(@inquiry).deliver
    render 'posts/test'
  end
end
