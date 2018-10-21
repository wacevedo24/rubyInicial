require 'rails_helper'

RSpec.feature "Animals", type: :feature, js: true do
  it "crear animal" do
    visit animals_path
    within("#new_animal") do
      fill_in 'animal_nombre', with: 'Topo'
      fill_in 'animal_url_foto', with: 'https://disruptiveludens.files.wordpress.com/2016/04/fake-companies-list-announced-by-tcs-and-ibm-2015.png'
    end
    click_button 'Create Animal'
    expect(page).to have_content 'Success'
  end

  
#Actualizar un animal 


end


