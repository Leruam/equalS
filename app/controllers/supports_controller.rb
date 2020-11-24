class SupportsController < ApplicationController

  # mettre authorize (pundit) pour que seul le current_user puisse create et destroy ses supports
  # et MAJ policy de Support

  def create
    # via les boutons de "support l'assoce"

  end

  def destroy
    # via les boutons de "stop support l'assoce"
  end
end
