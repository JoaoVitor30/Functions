notas_aluno<-function(tabela_aluno){
  
  # Variaveis
  totalnotas<-c()
  media<-c()
  k<-0
  
  while(k==0){
    print("-----------CADASTRO DE ALUNOS E NOTAS---------")
    
    # Cadastro dos nomes e das notas
    for(i in 1:nrow(tabela_aluno)){
      cat("Digite o nome do aluno da classe",tabela_aluno$Classe[i])
      tabela_aluno$Aluno[i]<-scan(n=1,what = character())
      
      cat("Digite a primeira nota do aluno",tabela_aluno$Aluno[i])
      tabela_aluno$Nota1[i]<-scan(n=1)
      
      cat("Digite a segunda nota do aluno",tabela_aluno$Aluno[i])
      tabela_aluno$Nota2[i]<-scan(n=1)
      
      # Calculando a média das notas
      totalnotas[i]<-sum(tabela_aluno$Nota1[i],tabela_aluno$Nota2[i])
      media[i]<- totalnotas[i] / 2
      tabela_aluno$Media[i]<-media[i]
      
      if(media[i] < 7){
        tabela_aluno$Status[i]<-"Reprovado"
      } else {
        tabela_aluno$Status[i]<-"Aprovado"
      }
      
    }# Fim do For
    
    print("-----------REVISAR O CADASTRO------------") 
    print(tabela_aluno)
    
    print("DIGITE 0 (Para cadastrar novamente)")
    print("DIGITE 1 (Para finalizar o cadastro)")
    k<-scan(n=1)
    
    
  }# Fim do While
  return(tabela_aluno)
}# Fim da Função

notas_aluno(aluno)
aluno<-data.frame(Classe=c(1,2,3,4,5,6))