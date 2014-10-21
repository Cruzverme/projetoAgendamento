# coding: utf-8
require 'rails_helper'

feature 'gerenciar pessoa fisica' do
	scenario 'incluir Pessoafisica' do # , :js => true do
		visit new_pessoa_fisica_path
		preencher_e_verificar_pessoa_fisica
	end
	
	scenario 'alterar pessoa fisica' do #, :js => true do
		pessoa_fisica = FactoryGirl.create(:pessoa_fisica)
		visit edit_pessoa_fisica_path(pessoa_fisica)
		preencher_e_verificar_pessoa_fisica
	end

	scenario 'excluir pessoa_fisica' do #, :javascript => true do
		pessoa_fisica = FactoryGirl.create(:pessoa_fisica)
		visit pessoa_fisicas_path
		click_link 'Excluir'
	end

	def	preencher_e_verificar_pessoa_fisica
		fill_in 'Nome', :with => "Nome"
		fill_in 'Datanascimento', :with => "20/10/2014"
		fill_in 'Endereco', :with => "Endereco"
		fill_in 'Cpf', :with => "123456"
		fill_in 'Curriculo', :with => "Curriculo"
		fill_in 'Cidade', :with => "cidade"
		fill_in 'Bairro', :with => "Bairro"
		fill_in 'Telefone', :with => "telefone"		
		fill_in 'Email', :with => "Email"
		click_button 'Salvar'
		expect(page).to have_content 'Nome: Nome'
		expect(page).to have_content 'Datanascimento: 2014-10-20'
		expect(page).to have_content 'Endereco: Endereco'
		expect(page).to have_content 'Cpf: 123456'
		expect(page).to have_content 'Curriculo: Curriculo'
		expect(page).to have_content 'Cidade: cidade'
		expect(page).to have_content 'Bairro: Bairro'
		expect(page).to have_content 'Telefone: telefone'
		expect(page).to have_content 'Email: Email'
	end
end
