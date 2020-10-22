require 'rails_helper'

RSpec.describe "Users", type: :request do
  it "gets a list of Users" do
    # Create a new cat in the Test Database (this is not the same one as development)
    User.create(name: 'Jimbo', age: 26, address: "San Diego, CA", email: "name@domain.com")

    # Make a request to the API
    get '/users'

    # Convert the response into a Ruby Hash
    json = JSON.parse(response.body)

    # Assure that we got a successful response
    expect(response).to have_http_status(200)

    # Assure that we got one result back as expected
    expect(json.length).to eq 1
  end

  it "creates a user" do
    # The params we are going to send with the request
    user_params = {
      user: {
        name: 'Jimbo', 
        age: 26, 
        address: "San Diego, CA", 
        email: "name@domain.com"
      }
    }

    # Send the request to the server
    post '/users', params: user_params

    # Assure that we get a success back
    expect(response).to have_http_status(200)

    # Look up the cat we expect to be created in the Database
    user = User.first

    # Assure that the created cat has the correct attributes
    expect(user.name).to eq 'Jimbo'
  end

  it "edits a user" do
    # The params we are going to send with the request
    user_params = {
      user: {
        name: 'Jimbo', 
        age: 26, 
        address: "San Diego, CA", 
        email: "name@domain.com"
      }
    }

    # Send the request to the server
    post '/users', params: user_params

    user = User.first

    new_user_params = {
      user: {
        name: 'Jimbo', 
        age: 36, 
        address: "San Diego, CA", 
        email: "name@domain.com"
      }
    }    

    patch "/users/#{user.id}", params: new_user_params

    user = User.find(user.id)

    expect(response).to have_http_status(200)

    expect(user.age).to eq 36

    end

    it "deletes a user" do
    # The params we are going to send with the request
    user_params = {
      user: {
        name: 'Jimbo', 
        age: 26, 
        address: "San Diego, CA", 
        email: "name@domain.com"
      }
    }
    post '/users', params: user_params

    user = User.first

    user = User.find(user.id)

    delete "/users/#{user.id}", params: user_params

    # expect(delete).t
    expect(response).to have_http_status(200)
    user = User.all
    expect(user).to be_empty

    end

end
