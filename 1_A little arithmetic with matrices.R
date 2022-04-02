# all_wars_matrix and ticket_prices_matrix are available in your workspace
moviesNames <- c("A New Hope",
                 "The Empire Strikes Back",
                 "Return of the Jedi",
                 "The Phantom Menace",
                 "Attack of the Clones",
                 "Revenge of the Sith")

countryNames <- c("US", "non-US")

moviesData <- c(461.0, 314.4,
                290.5, 247.9,
                309.3, 165.8,
                474.5, 552.5,
                310.7, 338.7,
                380.3, 468.5)

all_wars_matrix <- matrix(moviesData,
                          byrow = TRUE,nrow = 6,
                          dimnames = list(moviesNames, countryNames))

#visitors is the number of visitors in millions
original_visitors <- all_wars_matrix / 5

# original ticket prices matrix
ticket_prices_matrix <- all_wars_matrix / original_visitors

# vector with new prices
new_ticket_prices <- c(ticket_prices_matrix[1:2],
                              ticket_prices_matrix[3:4]+1,
                              ticket_prices_matrix[5:6]+2,
                              ticket_prices_matrix[7:8]-1,
                              ticket_prices_matrix[9:10]-0.5,
                              ticket_prices_matrix[11:12]-0.1)

# New ticket prices matrix with new prices
new_ticket_prices_matrix <- matrix(new_ticket_prices,
                                   nrow = 6, byrow = TRUE,
                                   dimnames = list(moviesNames, countryNames))

# Estimated numbers of visitors
new_visitors <- all_wars_matrix / new_ticket_prices_matrix

# US visitors
US_visitors <- new_visitors[,1]

# Average number of US visitors
mean(US_visitors)

