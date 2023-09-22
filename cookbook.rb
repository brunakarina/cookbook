    INSERIR_RECEITA = 1
    VISUALIZAR_RECEITAS = 2
    SAIR = 3    
      
    def bem_vindo()
        puts "Bem-vindo ao Cookbook, sua rede social de receitas"
    end

    def menu()
        puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
        puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
        puts "[#{SAIR}] Sair"
    
        print "Escolha uma opção: "
        gets.to_i()
    end

    def inserir_receita()
        puts "Digite o nome da receita: "
        nome = gets.chomp()
        puts "Digite o tipo da receita: "
        tipo = gets.chomp()
        puts
        puts "Receita #{nome} cadastrada com sucesso"
        puts
        { nome: nome, tipo: tipo }
    end

    def imprimir_receitas(receitas)
        puts "===== Receitas cadastradas com sucesso ====="
        receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
        end
        puts
        if receitas.empty?
            puts "Nenhuma receita cadastrada"
        end
    end
    
    bem_vindo()

    receitas = []

    opcao = menu()

while(opcao != SAIR) do
    if(opcao == INSERIR_RECEITA)
        receitas << inserir_receita()
    elsif(opcao == VISUALIZAR_RECEITAS)
        imprimir_receitas(receitas)     
    else
        puts "Opção invalida"
    end
    opcao = menu()
end

puts
puts "Obrigado por usar o Cookbook, até logo" 

# Outra forma de fazer:
# loop do
#     if(opcao == INSERIR_RECEITA)
#         receitas << inserir_receita()
#     elsif(opcao == VISUALIZAR_RECEITAS)
#         imprimir_receitas(receitas)  
#     elsif(opcao == SAIR)
#         break   
#     else
#         puts "Opção invalida"
#     end

#     opcao = menu()
# end
