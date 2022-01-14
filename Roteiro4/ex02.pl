soma_ate(0, 0, _).
soma_ate(K, S, Acum):-
    NovoAcum is K+Acum,
    Acum1 is K-1,
    soma_ate(Acum1, Acum, NovoAcum),
soma_ate(K, S):-
	soma_ate(K, S, 0).
    
% Que ta funcionando, está. mas entra em recursao infinita ;-;
% Acho que a saida é atualizar o S, mas nao consigo bolar como.