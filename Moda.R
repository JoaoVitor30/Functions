moda<-function(x){
  # Busca o valor unico para a coluna
  valor_unico<-unique(x)
  # Contabilizar quantas vezes o valor unico aparece e busca o maior valor
  valor_unico[which.max(tabulate(match(x,valor_unico)))]
}