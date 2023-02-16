namespace :dev do
  desc "Limpar o banco de dados"
  task clean: :environment do
    ActiveRecord::Base.connection.tables.each do |table|
      ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
    end
  end

  desc "Cria alguns clientes de teste"
  task create_clientes: :environment do
    5.times do |i|
      name = Faker::Name.name
      document = Faker::Number.number(digits: 11)
      telephone = Faker::PhoneNumber.cell_phone
      email = Faker::Internet.email
      Cliente.create(name: name, document: document, telephone: telephone, email: email)
    end
  end

  desc "Cria alguns funcionários de teste"
  task create_funcionarios: :environment do
    5.times do |i|
      nome = Faker::Name.name
      documento = Faker::Number.number(digits: 11)
      telefone = Faker::PhoneNumber.cell_phone
      email = Faker::Internet.email
      Funcionario.create(nome: nome, documento: documento, telefone: telefone, email: email)
    end
  end

  desc "Cria algumas ordens de serviço de teste"
  task create_ordens_de_servico: :environment do
    5.times do |i|
      numero = i+1
      cliente = Cliente.all.sample
      funcionario = Funcionario.all.sample
      descricao = Faker::Lorem.sentence
      data_solicitacao = Faker::Date.between(from: 30.days.ago, to: Date.today)
      previsao_conclusao = Faker::Date.between(from: Date.tomorrow, to: 30.days.from_now)
      OrdemDeServico.create(numero: numero, cliente_id: cliente.id, funcionario: funcionario, descricao: descricao, data_solicitacao: data_solicitacao, previsao_conclusao: previsao_conclusao)
    end
  end



  desc "Cria dados de teste"
  task create: :environment do
    #Rake::Task["dev:clean"].invoke
    Rake::Task["dev:create_clientes"].invoke
    Rake::Task["dev:create_funcionarios"].invoke
    Rake::Task["dev:create_ordens_de_servico"].invoke
  end

end