
## Essa é uma aplicação que vende medicamentos.

Temos aqui o modelo Customer que é o usuário final, aquele que vai comprar o medicamento.
Medicine é o medicamento, pode ser uma aspirina por exemplo.
Cart é o carrinho, ele pertence a um Customer, sendo que um Cart pode ter muitos itens, através do relacionamento CartItem, esse por sua vez terá relacionamento com o Medicine.

## Erros e Novas funcionalidades
A seguir temos uma lista de Erros e de Novas Funcionalidades.
Você pode seguir sua intuição ou tirar sua dúvida conosco caso tenha alguma dúvida.

Os erros e as novas funcionalidades estão em ordem de dificuldade, tente fazer o máximo que conseguir.


## Erros:
  Recebemos um relatório com o seguinte erro que precisa ser corrigido.

  ```
  /app/medicine.rb:2:in `total'
  NoMethodError (undefined method `*' for nil:NilClass)
  ```


### Novas funcionalidades:

####  Nome deve ser maiúsculo.
O atributo `name` da classe Customer deve sempre retornar a primeira letra maiúscula de cada palavra.

####  Adicionar item no Carrinho.
  * Implemente a funcionalidade que adiciona um item no carrinho e remove o item do estoque do Medicine.
  Regras:
    - O estoque não pode ficar negativo

####  Total do Carrinho
*   Precisamos calcular o total do carrinho