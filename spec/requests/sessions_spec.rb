require 'rails_helper'

RSpec.describe "Api::V1;;Sessions", type: :request do
  describe "POST api/v1/sessions" do
    it "works! (now write some real specs)" do
      post api_v1_session_saludos_path
      expect(response).to have_http_status(200)
    end
  end

  describe "Usuario valido" do
    it "debe responder un token"do
    user = User.create!({email:"pepe@gmail.com",password:"1234567"})
    token = JsonWebToken.encode({id: user.id, email: user.email})
    post api_v1_sessions_path, user:{ email:"pepe@gmail.com",password:"1234567"}
    res = JSON.parce(response.body)
    expect(res["token"]).to eq token
    end
  end  
  describe "Usuario no valido" do
    it "debe responder error"do
    post api_v1_sessions_path, user:{ email:"pepe@gmail.com",password:"1"}
    res = JSON.parce(response.body)
    expect(res["error"]).to eq token
    end
  end   

  context
end
