notas_aluno1<-function(z){
  
  # Variaveis
  Nome<-as.character()
  Nota1<-as.numeric()
  Nota2<-as.numeric()
  M�dia<-as.numeric()
  Status<-as.character()
  
  # Criando o DataFrame
  aluno1<-data.frame(Nome,Nota1,Nota2,M�dia,Status)
  aluno1$Nome<-as.character(aluno1$Nome)
  aluno1$Status<-as.character(aluno1$Status)
  
  k<-0
  i<-1
  
  while(k==0){
    print("-----------CADASTRO DE ALUNOS E NOTAS---------")
      
      # Cadastro dos nomes e das notas
      print("Digite o nome do aluno")
      Nome<-scan(nmax=1,what = character())
      
      cat("Digite a primeira nota do aluno",Nome)
      Nota1<-scan(n=1)
      
      cat("Digite a segunda nota do aluno",Nome)
      Nota2<-scan(n=1)
      
      # Criando um vetor com as notas
      notas<-c(Nota1,Nota2)
      
      # Exibindo as notas
      for(j in 1:length(notas)){
        cat("Nota da prova",j,"---->")
        cat("",notas[j],"\n")
      }
      
      # Exibindo a m�dia
      M�dia<-mean(notas)
      cat("M�dia do aluno:",M�dia,"\n")
      
      # Calculando o status do aluno
      if(M�dia < 7){
        print("Aluno Reprovado")
        Status<-"Reprovado"
      } else {
        print("Aluno Aprovado")
        Status<-"Aprovado"
      }
    
    # Preenchendo o DataFrame
    aluno1[i,]<-c(Nome,Nota1,Nota2,M�dia,Status)
    
    print("DIGITE 0 (Cadastrar outro aluno?)")
    print("DIGITE 1 (Para finalizar o cadastro)")
    k<-scan(n=1)
  
    # Incrementando + 1 = linhas no DataFrame
    i<-i+1

  
  }# Fim do While
  return(aluno1)
  
}# Fim da Fun��o

notas_aluno1(a)
