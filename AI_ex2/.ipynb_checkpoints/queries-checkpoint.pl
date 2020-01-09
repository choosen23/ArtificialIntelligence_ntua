find_similar_movies_1(X, Y) :- genre(X, G1), genre(Y, G1),G1 \= G2,genre(X, G2), genre(Y, G2),genre(X, G3), genre(Y, G3),G3 \= G2,genre(X, G4),genre(Y, G4),G3 \= G4,genre(X, G5), genre(Y, G5),G4 \= G5,X \= Y 
find_similar_movies_2(X, Y) :- genre(X, G1), genre(Y, G1),genre(X, G2), genre(Y, G2),G1 \= G2,genre(X, G3),genre(Y, G3),G3 \= G2,X \= Y 
find_similar_movies_3(X, Y) :- genre(X, G1), genre(Y, G1),X \= Y 
find_similar_movies_4(X, Y) :- director(X, D), director(Y, D), genre(X, G), genre(Y, G), X \= Y 
find_similar_movies_5(X, Y) :-  plot_keywords(X,P1),plot_keywords(Y,P1),plot_keywords(X,P2),plot_keywords(Y,P2),P1 \= P2,plot_keywords(X,P3),plot_keywords(Y,P3),P2 \= P3,plot_keywords(X,P4),plot_keywords(Y,P4),P4 \= P3,plot_keywords(X,P5),plot_keywords(Y,P5),P4 \= P5,X \= Y 
find_similar_movies_6(X, Y) :- plot_keywords(X,P1),plot_keywords(Y,P1),plot_keywords(X,P2),plot_keywords(Y,P2),plot_keywords(X,P3),plot_keywords(Y,P3),X \= Y 
find_similar_movies_7(X,Y) :- actor_1_name(X,N1), actor_1_name(Y,N1), actor_2_name(X,N2), actor_2_name(Y,N2), actor_3_name(X,N3), actor_3_name(Y,N3), X\=Y
find_similar_movies_9(X,Y) :- actor_3_name(X,N1) , actor_3_name(Y,N1), X \= Y
find_similar_movies_9(X,Y) :- actor_2_name(X,N2) , actor_2_name(Y,N2), X \= Y
find_similar_movies_9(X,Y) :- actor_1_name(X,N1) , actor_1_name(Y,N1), X \= Y
find_similar_movies_8(X,Y) :- actor_3_name(X,N3),  actor_3_name(Y,N3),not(find_similar_movies_7(X,Y))
find_similar_movies_8(X,Y) :- actor_2_name(X,N2), actor_2_name(Y,N2),not(find_similar_movies_7(X,Y))
find_similar_movies_8(X,Y) :- actor_1_name(X,N1), actor_1_name(Y,N1),not(find_similar_movies_7(X,Y))
find_similar_movies_10(X,Y) :- genre(X, G), genre(Y, G), language(X,L), language(Y,L), X \= Y
find_similar_movies_11(X,Y) :- genre(X, G), genre(Y, G), X \= Y, color(X,C), color(Y,C)
find_similar_movies_12(X,Y) :- genre(X,G), genre(Y,G), content_rating(X,C), content_rating(Y,C), X \= Y
