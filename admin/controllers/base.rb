ContactApp::Admin.controllers :base do
  get :index, map: '/' do
    @inquiry = Inquiry.all
    render 'base/index'
  end
end
