# coding: utf-8
require 'rails_helper'

feature 'gerenciar estagio' do
	 before :each do
		create(:pessoa_juridica, nome: 'NomePessoa', endereco: 'Endereco', bairro: 'bairro',
			email: 'Email', telefone: 'Telefone', porte: 'Porte', cnpj: '12345', cidade: 'Cidade')
	end

	let(:pessoa_juridica) {create(:pessoa_juridica, nome: 'NomePessoa2', endereco: 'Endereco2', bairro: 'bairro2',
			email: 'Email2', telefone: 'Telefone2', porte: 'Porte2', cnpj: '123452', cidade: 'Cidade2')}

	scenario 'incluir estagio' do # , :js => true do
		visit new_estagio_path
		preencher_e_verificar_estagio
	end
	
	scenario 'alterar estagio' do #, :js => true do
		estagio = FactoryGirl.create(:estagio, :pessoa_juridica => pessoa_juridica)
		visit edit_estagio_path(estagio)
		preencher_e_verificar_estagio
	end

	scenario 'excluir estagio' do #, :javascript => true do
		estagio = FactoryGirl.create(:estagio, :pessoa_juridica => pessoa_juridica)
		visit estagios_path
		click_link 'Excluir'
	end

	def	preencher_e_verificar_estagio
		fill_in 'Cargo', :with => "Cargo"
		fill_in 'Quantidadedevagas', :with => "1"
		fill_in 'Salario', :with => "1000"
		fill_in 'Descricao', :with => "Descricao"
		fill_in 'Especificacaodevaga', :with => "EspecificacaoDeVaga"
		select 'NomePessoa', from: "Pessoa juridica"

		click_button 'Salvar'

		expect(page).to have_content 'Cargo: Cargo'
		expect(page).to have_content 'Quantidadedevagas: 1'
		expect(page).to have_content 'Salario: 1000'
		expect(page).to have_content 'Descricao: Descricao'
		expect(page).to have_content 'Especificacaodevaga: EspecificacaoDeVaga'
		expect(page).to have_content 'Pessoa juridica: NomePessoa'
	end
end