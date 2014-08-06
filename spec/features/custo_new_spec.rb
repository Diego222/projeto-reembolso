require 'rails_helper'

	feature "New Custo" do
		scenario "Custo" do
		user = FactoryGirl.create(:user)

		visit new_user_session_path
		fill_in "Email", with: user.email
		fill_in "Password", with: user.password
		click_button "Sign in"

		viagem = FactoryGirl.create(:viagem)
		visit new_viagem_path
		fill_in "Name", with: viagem.name
		#fill_in "Date", with: viagem.date
		click_button "Create Viagem"

		tipo = FactoryGirl.create(:tipo)
		visit new_tipo_path
		fill_in "Description", with: tipo.description
		click_button "Create Tipo"

		custo = FactoryGirl.create(:custo)
		visit new_viagem_custo_path
		fill_in "Valor", with: viagem.custo.valor
		click_button "Create Custo"
	
	end
end