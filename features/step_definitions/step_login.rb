Dado("que eu acesso a pagina do listo") do
    visit 'https://homapp.listo360.com.br/login'
end

Quando("faço login com {string} e {string}") do |email, senha|
    find('input[name=email]').set email
    find('input[name=password]').set senha
    find('div.icheckbox_square-blue').click
    click_on 'Entrar'
end

Então("devo ser autenticado com sucesso") do
    expect(page).to have_content('Avaliações')
end

Quando("faço login com {string}") do |email|
    find('input[name=email]').set email
    click_on 'Entrar'
    sleep 03
end

Então("devo ver {string}") do |string|
    expect(page).to have_content('O campo senha é obrigatório.')
end

Quando("faço o login com {string} e {string}") do |email, senha2|
    find('input[name=email]').set email
    find('input[name=password]').set senha2
    click_on 'Entrar'
    sleep 03
end

Então("devo ver a seguinte mensagem {string}") do |mensagem|
    expect(page).to have_content('Senha incorreta.')
end

Então("devo ver a mensagem {string}") do |string|
    expect(page).to have_content('Email não encontrado')
end

Quando("clico em sair") do
    find("img[src*='/images/default/no_user.png']").find(:xpath,'..').click
    find('div.dropdown-advanced-logout').click
  sleep 10
end

Então("realizo o log out") do
    expect(page).to have_content('ROTINAS E CHECKLISTS SIMPLIFICADAS')
end
