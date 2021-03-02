Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


Etapes de conception et usefulltips 

1 - creation du modele user avec la gem devise -> cf lectures du wagon

2 - installation de cloundinary -> cf lectures du wagon

3 - Mise en place des modèles  
![Schéma de la DB](/images/schema-db.png?raw=true "Schéma de DB")

4 - Pour le modèle booking
  Ici première subtilité avec 2 instances de User qui sont referencées comme clefs etrangères.
  Suivre le tuto https://dev.to/luchiago/multiple-foreign-keys-for-the-same-model-in-rails-6-7ml pour se faire ;-)
  
5 - Creation du controlleur Dashboard 
    Route : `resourcE Dashboard, only: :show`

6 - Installation de Pundit
  . pour autoriser à render la show  de dashboardqui ne depend d'aucun modèle
  
    `class DashboardPolicy < Struct.new(:user, :dashboard)
      # ...
    end`
    
    `# In controllers
     authorize :dashboard, :show?`
     
     `
     # In views
      <% if policy(:dashboard).show? %>
        <%= link_to 'Dashboard', dashboard_path %>
      <% end %>
     `
