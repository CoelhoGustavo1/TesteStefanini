Dado('que acesso a pagina de cadastro') do
  visit 'http://prova.stefanini-jgr.com.br/teste/qa/'
end

Quando('submeto o meu cadastro com {string} e {string} e {string}') do |nome, email, senha|
  @email = email
  find('#name').set nome
  find('#email').set email
  find('#password').set senha
  click_button 'Cadastrar'
end

Então('devo ver os usuarios ja cadastrados') do
  expect(page).to have_content @email
end

Quando('submeto o cadastro com {string} e {string} e {string}') do |nome, email, senha|
  find('#name').set nome
  find('#email').set email
  find('#password').set senha
  click_button 'Cadastrar'
end

Então('devo ver {string}') do |mensagem|
  expect(page).to have_content mensagem
end