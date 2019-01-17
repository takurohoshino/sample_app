ContactApp::Admin.controllers :inquiry do
  get :destroy, with: :id do
    inquiry = Inquiry.find(params[:id])
    inquiry.destroy
    redirect url(:base, :index)
  end
end
