# FUNÇÃO DE CADASTRO DE PEDIDOS

novos_pedidos<-function(nome,tabela_fornecedores){
  
  # Variaveis utilizadas
  meus_pedidos<-c()
  k<-0
  
  while(k==0){
    print("-----------------NOVO PEDIDO------------------\n")
    cat("Total de fornecedores ",nrow(tabela_fornecedores),"\n")
    
    for(i in 1:nrow(tabela_fornecedores))
    {
      # Cadastro dos pedidos
      cat("Quantidades do produto",tabela_fornecedores$fornecedores[i],"? \n")
      meus_pedidos[i]<-scan(n=1) 
      
      # Se o pedido é abaixo de 10%
      if(meus_pedidos[i]<0.1*tabela_fornecedores$capacidade[i]){
        cat("Pedido abaixo de",0.1*tabela_fornecedores$capacidade[i],"unidades \n")
      } 
      
      else { 
        # Se o pedido está no limite do estoque
        if(meus_pedidos[i]<=tabela_fornecedores$capacidade[i]){
          print("Pedido Aceito")
        } 
        # Se o pedido está acima do estoque
        if(meus_pedidos[i]>tabela_fornecedores$capacidade[i]){
        cat("Pedido ACIMA da capacidade do estoque. O maximo é de",tabela_fornecedores$capacidade[i],"unidades \n")
        }
        
      }#fim else
      
    }#Fim do For
    print("-----------REVISAR OS PEDIDOS------------") 
    cat("FUNCIONARIO:",nome,"\n")
    tabela_fornecedores$Pedidos<-meus_pedidos
    print(tabela_fornecedores)
    
    print("DIGITE 0 (Para continuar os pedidos)")
    print("DIGITE 1 (Para finalizar os pedidos)")
    k<-scan(n=1)
    
  }#Fim do While
  return(tabela_fornecedores)
  
} #Fim da Função

# Chamando a função
novos_pedidos(nome="João",tabela_fornecedores = tabelaf)