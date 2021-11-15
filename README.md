DEFINIÇÕES
Objetivo
O objetivo deste mini projeto é a criação de um Catálogo de Produtos de Brinquedos, usando JSP, Servlet e Bootstrap, CSS, JAVASCRIPT, HTML5. 
Área Pública
A área pública consiste em duas páginas que qualquer usuário poderá acessar:-
•	Home Page 
•	Página de Detalhes do Produto 


Home Page
 
A Home Page é um Catálogo de Produtos. Ela deverá ter o nome índex.html.
O layout acima é uma sugestão, mas caso a equipe queira desenvolver outro layout, isto será possível (desde que Eu aprove antes).
Dica: Quando se acessa o localhost, e se clica numa pasta, caso exista uma página de nome índex.html (nesta pasta), ela é automaticamente exibida no navegador.
Cabeçalho
 
O Cabeçalho de uma página é geralmente uma área onde se encontram:-
•	Um logotipo (da empresa, instituição, etc.)
•	Algumas opções para acesso de outras páginas (Menu)
•	Um mini-formulário para acesso à área administrativa (com login e senha) * FALTA FAZER FUNCIONAR
•	Dentre outras possibilidades
Lateral Esquerda
 
A lateral esquerda deverá conter as Categorias de Brinquedos. 
Estas categorias deverão vir de uma tabela (que cada equipe deverá criar) e serem exibidas nesta área em ordem alfabética.
Nesta área da tela, cada categoria deverá ser um link que ao for clicado, chamará a página índex.html, informando qual categoria foi escolhida. Desta forma, a página deverá exibir na seção de Galeria de Produtos (abaixo) apenas os produtos da categoria escolhida.
Área de Conteúdo
 
Esta área deverá exibir os produtos com pelo menos os thumbs (fotos pequenas dos produtos) e o nome do produto. A equipe deve definir se deseja exibir outras informações nesta galeria.
O layout também pode ser modificado.
É adequado que os produtos apareçam em alguma ordem que faça sentido (alfabética, por código, etc.). 
O produto deve ser um link para uma página de detalhe. Desta forma, se a opção +detalhes for clicada, deverá exibir a página de detalhes do produto correspondente.
Deverá existir ao menos 2 produtos por categoria cadastrada.
Página de Detalhe de Produtos
Ao se clicar num dos produtos da Galeria, a página de detalhe deverá ser exibida.
Segue abaixo um exemplo do que pode ser feito:-
 
É importante que todas as informações do produto sejam exibidas na tela.
Será necessário criar uma tabela para armazenar as informações dos produtos.
Rodapé
Insira nesta seção o nome da equipe (defina um nome para sua equipe que deverá ter até 6 membros).
Área Administrativa (WEB e MOBILE)
Esta área deverá ser acessada através de um login/senha, como o proposto na sugestão da tela principal. 
Desta forma, ao digitar o login e senha do usuário, o sistema deverá verificar se as informações batem (como já o fizemos em aula anterior) e liberar o acesso para a área administrativa.
A área administrativa deverá permitir ao usuário:-
•	Incluir, alterar, excluir e visualizar as categorias.
•	Incluir, alterar, excluir e visualizar os produtos.
•	Incluir, alterar, excluir e visualizar os usuários do site.
Exemplo:-
 
Ao se clicar numa opção, a tela de manutenção que permitirá a edição dos dados deve ser aberta. Exemplo:-
 
DESENVOLVIMENTO
Seguem sugestões para o desenvolvimento do miniprojeto.
Páginas a serem desenvolvidas:-
•	Galeria de Produtos (índex.html)
•	Página de Detalhe de Produto (produto.jsp)
•	Área Administrativa (administrativa.jsp)
o	Cadastro de Categorias (categorias.jsp)
	Inclusão de Categoria
	Alteração de Categoria
o	Cadastro de Produtos (produtos.jsp)
	Inclusão de Produto
	Alteração de Produto
o	Cadastro de Usuários (usuários.jsp)
	Inclusão de Usuário
	Alteração de Usuário
Tabelas a serem criadas:-
•	Categorias
•	Produtos
•	Usuários


