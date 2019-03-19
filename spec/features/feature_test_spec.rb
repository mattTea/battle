describe 'homepage' do
  it 'displays' do 
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!' 
  end 
end 