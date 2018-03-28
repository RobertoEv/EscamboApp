namespace :utils do
  desc "Cria Administradores para testes"
  task generate_admins: :environment do
    puts "Cadastrando os ADMINISTRADORES..."
      10.times do
        Admin.create!(email: Faker::Internet.email, 
                      password: "123456", 
                      password_confirmation: "123456")
      end
    puts "Cadastrando os ADMINISTRADORES... [OK]"
  end

end
