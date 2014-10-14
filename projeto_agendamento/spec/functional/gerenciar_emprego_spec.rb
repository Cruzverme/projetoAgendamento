# coding: utf-8
require 'rails_helper'

feature 'gerenciar emprego' do
	 before :each do
		create(:pessoa_juridica, nome: 'NomePessoa', endereco: 'Endereco', bairro: 'bairro',
			email: 'Email', telefone: 'Telefone', porte: 'Porte', cnpj: '12345', cidade: 'Cidade')
	end

	let(:pessoa_juridica) {create(:pessoa_juridica, nome: 'NomePessoa2', endereco: 'Endereco2', bairro: 'bairro2',
			email: 'Email2', telefone: 'Telefone2', porte: 'Porte2', cnpj: '123452', cidade: 'Cidade2')}

	scenario 'incluir emprego' do # , :js => true do
		visit new_emprego_path
		preencher_e_verificar_emprego
	end
	
	scenario 'alterar emprego' do #, :js => true do
		emprego = FactoryGirl.create(:emprego, :pessoa_juridica => pessoa_juridica)
		visit edit_emprego_path(emprego)
		preencher_e_verificar_emprego
	end

	scenario 'excluir emprego' do #, :javascript => true do
		emprego = FactoryGirl.create(:emprego, :pessoa_juridica => pessoa_juridica)
		visit empregos_path
		click_link 'Excluir'
	end

	def	preencher_e_verificar_emprego
		fill_in 'Cargo', :with => "Cargo"
		fill_in 'Quantidadedevagas', :with => "1"
		fill_in 'Salario', :with => "1000.0"
		fill_in 'Descricao', :with => "Descricao"
		fill_in 'Requisitos', :with => "Requisitos"
		select 'NomePessoa', from: "Pessoa juridica"

		click_button 'Salvar'

		expect(page).to have_content 'Cargo: Cargo'
		expect(page).to have_content 'Quantidadedevagas: 1'
		expect(page).to have_content 'Salario: 1000.0'
		expect(page).to have_content 'Descricao: Descricao'
		expect(page).to have_content 'Requisitos: Requisitos'
		expect(page).to have_content 'Pessoa juridica: NomePessoa'
	end
end