ev_to_joules <- function(ev) {
  # Conversion factor: 1 eV = 1.602176634e-19 Joules
  joules <- ev * 1.602176634e-19
  return(joules)
}


maximum_growth_rate<-function(p,temperature,energy){
  # Energy in electronVolts
  a <- 1.7e5
  kb<-1.380649e-23
  energy_ev <- ev_to_joules(energy)
  rna_copy_number<-rgeom(1,p) + 1
  return(a*rna_copy_number*exp(-energy_ev/(kb*temperature)))
}

 interaction_matrix<-function(n_species){
   media<-runif(1,min=0.1,max=1)
   m<-rnorm(n_species*n_species, media, media/2)
   m<-matrix(m, nrow=n_species)
 }
 
 

 # Function to define the system of ODEs (Lotka-Volterra model)
 lotka_volterra <- function(t, state, parameters) {
   # Extract state variables (population sizes of the species)
   N <- state
   
   # Extract parameters: growth rates and interaction matrix
   r <- parameters$r      # Growth rates
   alpha <- parameters$alpha  # Interaction coefficients matrix
   muerte<-parameters$muerte
   # Define the system of differential equations for each species
   dN_dt <- r * N *(1-t(alpha %*% N) -muerte) # Lotka-Volterra interaction terms
   
   # Return the rate of change for each species
   list(dN_dt)
 }
 

