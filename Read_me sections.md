# User storie :

## 1 - Dans le dahboard

### As a  professional-user, I can go to my dashboard et     create an offer with is included in the Category.

+     le modele Categorie est accessible sur le dashboard => _pundit_

### As an admin-user, I can *add , delete* some categories

+ ###__ 

*ce que j'ai fait today !*

- rajouté la colonne admin to user

- mis le user id 1 en tant qu'admin

- on crée des categorie (dans la seed)

- faire la policy de category 

- J'ai supprime le fichier dashboard_policy.rb
  
  class DashboardPolicy < Struct.new(:user, :dashboard)
  
  def show?
   user
   end
  
  end_
