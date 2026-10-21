/**
 * Aluna: Evellyn da Silva Barbosa
 */

programa {
  // Entrada
    const real PRECO_HORA = 10.0
    const inteiro DESCONTO = 5

    real totalArrecadado = 0.0
    inteiro horas[5]
    inteiro curto = 0
    inteiro medio = 0
    inteiro longo = 0
    inteiro aluguelMaisLongo = 0

    // Processamento
    funcao real valorAPagar(inteiro h) {
      real valor
      valor = h * PRECO_HORA
      
      se(h >= 3) {
        valor = valor - DESCONTO
      }
      retorne valor
    }
      funcao cadeia tipoDoAluguel(inteiro h) {
        se(h == 1) {
          retorne "Curto"
        } senao se(h == 2 ou h == 3) {
          retorne "Médio"
        } senao retorne "Longo"
      }
      funcao inicio () {
        inteiro i 
        real valor 

        para(i = 0; i < 5; i++) {
          escreva("\nDigite as horas do aluguel ", i + 1, ": ")
          leia(horas[i])

          valor = valorAPagar(horas[i])

          escreva("Valor: R$", valor, "\n")
          escreva("Tipo: ", tipoDoAluguel(horas[i]), "\n")

          totalArrecadado = totalArrecadado + valor
          
          se(horas[i] == 1) {
            curto = curto + 1
          } senao se(horas[i] == 2 ou horas[i] == 3) {
            medio = medio + 1
          } senao{
            longo = longo + 1
          } se(horas[i] > aluguelMaisLongo) {
            aluguelMaisLongo = horas[i]
          }
        }
        // Saída
        escreva("\nTotal arrecadado: R$", totalArrecadado, "\n")
        escreva("Alugueis curto: ", curto, "\n")
        escreva("Alugueis médio: ", medio, "\n")
        escreva("Alugueis longo: ", longo, "\n")
        escreva("Maior aluguel: ", aluguelMaisLongo, " horas\n")
      }
}