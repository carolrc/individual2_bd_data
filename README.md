📌 Descrição do Projeto

➔ O sistema irá auxiliar na avaliação de quais são as tecnologias que as empresas parceiras estão utilizando e quem são seus colaboradores;

➔ Vamos ter o cadastro de empresas parceiras, cadastro de tecnologias com a opção de selecionar a área (webdev, dados, marketing, etc.), uma tabela para registrar quais tecnologias as empresas estão utilizando e uma tabela para cadastro de colaboradores.


📌 Perguntas e respostas

1. Quais são as entidades necessárias?
Empresa, tecnologia, empresa tecnologia e colaborador

2. Quais são os principais campos e seus respectivos tipos?
   
Entidades e Campos 📊
Empresa:

  ID int [pk]
  CNPJ varchar(14)
  Nome varchar(100)
  Endereço varchar(100)
  Telefone varchar(15)
  Email varchar(50)
  Setor varchar(30)

Tecnologia:

  ID int [pk]
  Nome varchar(100)
  Área varchar(30)

Empresa tecnologia:

  ID_Empresa int
  ID_Tecnologia int

Colaborador:

  ID int [pk]
  Nome varchar(100)
  Cargo varchar(30)
  Email varchar(50)
  Endereço varchar(100)
  ID_Empresa int
  ID_Tecnologia int

 
3. Como essas entidades estão relacionadas?
 
    Relacionamento entre Empresa e Tecnologia:
        A cardinalidade desse relacionamento é muitos para muitos (N:M).
        Uma empresa pode utilizar várias tecnologias e uma tecnologia pode ser utilizada por várias empresas.

    Relacionamento entre Empresa e Colaborador:
        A cardinalidade desse relacionamento é um para muitos (1:N).
        Uma empresa pode ter vários colaboradores, mas um colaborador pertence a apenas uma empresa.

    Relacionamento entre Tecnologia e Colaborador:
        A cardinalidade desse relacionamento também é um para muitos (1:N).
        Um colaborador pode ter conhecimento em várias tecnologias, mas uma tecnologia pode estar associada a vários colaboradores.

4. Simule 2 registros para cada entidade:

Empresa:
        ID: 1, Nome: "Empresa A", Setor: "Tecnologia"
        ID: 2, Nome: "Empresa B", Setor: "Educação"
Tecnologia:
        ID: 1, Nome: "Python", Área: "Desenvolvimento"
        ID: 2, Nome: "SQL", Área: "Banco de Dados"
Colaborador:
        ID: 1, Nome: "João", Cargo: "Desenvolvedor", ID_Empresa: 1, ID_Tecnologia: 1
        ID: 2, Nome: "Maria", Cargo: "Analista de Dados", ID_Empresa: 2, ID_Tecnologia: 2
