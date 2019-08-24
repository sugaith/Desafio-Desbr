#Desafio Desbr

##Requisitos

- ***OK*** O sistema deve permitir o cadastro (inserção, exclusão, alteração e consulta) de projetos.

- ***OK*** Para cada projeto devem ser informados: nome, data de início, gerente responsável,
previsão de término, data real de término, orçamento total, descrição e status.

- Os projetos devem ser classificados em: baixo risco, médio risco e alto risco. A
classificação de risco não é cadastrada no sistema.

- ***OK*** A cada instante, o projeto deve estar em um status específico e único. Os status possíveis
não são cadastrados no sistema e são: em análise, análise realizada, análise aprovada,
iniciado, planejado, em andamento, encerrado, cancelado.

- ***OK*** Se um projeto foi mudado o status para iniciado, em andamento ou encerrado não pode
mais ser excluído.

- O sistema não deve permitir o cadastro de um novo membro diretamente. Deve ser
provida funcionalidade via web service, contendo nome e atribuição (cargo).

- O sistema deve permitir associar membros aos projetos que tem atribuição funcionário.
Regras de implementação:

- ***OK*** Persistir as informações no BD enviado, utilizando os frameworks solicitados
- ***OK*** Utilizar MVC
- Utilizar testes unitários para avaliar as regras; 



##Mais infos
- pasta do projeto Eclipse: TesteDesbr
- endereço inicial: http://localhost:8080/projetos/list/
- maven clean, install, Run Spring Boot App