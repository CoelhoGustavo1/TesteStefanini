Quando('submeto o meu cadastro com {string} e {string} e {string}') do |nome, email, senha|
  @email = email
  find('#name').set nome
  find('#email').set email
  find('#password').set senha
  click_button 'Cadastrar'
sleep 3
end

Então('devo ver os usuarios ja cadastrados') do
  expect(page).to have_content @email
  sleep 3
end

Quando('submeto o cadastro com {string} e {string} e {string}') do |nome, email, senha|
  find('#name').set nome
  find('#email').set email
  find('#password').set senha
  click_button 'Cadastrar'
  sleep 3
end

Então('devo ver {string}') do |mensagem|
  expect(page).to have_content mensagem
  sleep 3
end