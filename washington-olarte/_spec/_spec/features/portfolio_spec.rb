require 'spec_helper'

RSpec.describe 'Portfolio', type: :feature do
  before { visit '/portfolio.html' }

  it 'muestra los proyectos del JSON' do
    expect(page).to have_content("Diseño de sistemas de seguridad")
    expect(page).to have_content('Ruby')
    expect(page).to have_content('Proyecto 2')
  end
end
