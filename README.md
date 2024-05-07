# Perguntas e respostas

1. Quais são as entidades necessárias?
Empresa, tecnologia e colaborador

2. Quais são os principais campos e seus respectivos tipos?
Empresa:
        ID (chave primária, inteiro)
        Nome (texto)
        Setor (texto)
Tecnologia:
        ID (chave primária, inteiro)
        Nome (texto)
        Área (texto)
Colaborador:
        ID (chave primária, inteiro)
        Nome (texto)
        Cargo (texto)
        ID_Empresa (chave estrangeira referenciando Empresa)
        ID_Tecnologia (chave estrangeira referenciando Tecnologia)
 
3. Como essas entidades estão relacionadas?
Uma empresa pode utilizar várias tecnologias, então há uma relação de 1 para muitas entre Empresa e Tecnologia.
Um colaborador pertence a uma empresa e pode ter conhecimento em várias tecnologias, então há uma relação de 1 para muitas entre Empresa e Colaborador, e também uma relação de muitos para muitos entre Tecnologia e Colaborador.

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
