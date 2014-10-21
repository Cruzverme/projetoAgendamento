# coding: utf-8
require 'rails_helper'

feature 'gerenciar agendamento' do
	 before :each do
		create(:pessoa_fisica, nome: 'NomePessoa', dataNascimento: '20/10/2014', endereco: 'Endereco', cpf: '123456',
			cidade: 'Cidade', bairro: 'bairro', telefone: 'Telefone', email: 'Email')

		create(:pessoa_juridica, nome: 'NomeJuridico', endereco: 'Endereco', bairro: 'bairro',
			email: 'Email', telefone: 'Telefone', porte: 'Porte', cnpj: '12345', cidade: 'Cidade')
		
		create(:estagio, cargo: "CargoEstagio", quantidadeDeVagas: "Quantidadedevagas" , salario: "Salario",
		 descricao: "Descricao", especificacaoDeVaga: "Especificacaodevaga" , pessoa_juridica: pessoa_juridica )
		
		create(:emprego, cargo: "CargoEmprego", quantidadeDeVagas: "Quantidadedevagas" , salario: "Salario",
		 descricao: "Descricao", requisitos: "requisitos" , pessoa_juridica: pessoa_juridica )
	end

	let(:pessoa_fisica) {create(:pessoa_fisica, nome: 'NomePessoa2', dataNascimento: '21/10/2014', endereco: 'Endereco2',
			cpf: '1234561', cidade: 'Cidade2', bairro: 'bairro2', telefone: 'Telefone2', email: 'Email2')}

	let(:pessoa_juridica) {create(:pessoa_juridica, nome: 'NomeJuridico2', endereco: 'Endereco2', bairro: 'bairro2',
			email: 'Email2', telefone: 'Telefone2', porte: 'Porte2', cnpj: '123452', cidade: 'Cidade2')}

	let(:estagio) {create(:estagio, cargo: "Cargo2", quantidadeDeVagas: "Quantidadedevagas2" , salario: "Salario2",
		 descricao: "Descricao2", especificacaoDeVaga: "Especificacaodevaga2" , pessoa_juridica: pessoa_juridica ) }
		
	let(:emprego) {create(:emprego, cargo: "Cargo2", quantidadeDeVagas: "Quantidadedevagas2" , salario: "Salario2",
		 descricao: "Descricao2", requisitos: "requisitos2" , pessoa_juridica: pessoa_juridica ) }

	scenario 'incluir agendamento' do # , :js => true do
		visit new_agendamento_path
		preencher_e_verificar_agendamento
	end
	
	scenario 'alterar agendamento' do #, :js => true do
		agendamento = FactoryGirl.create(:agendamento, :pessoa_fisica => pessoa_fisica, :estagio => estagio, 
			:emprego => emprego)
		visit edit_agendamento_path(agendamento)
		preencher_e_verificar_agendamento
	end

	scenario 'excluir agendamento' do #, :javascript => true do
		agendamento = FactoryGirl.create(:agendamento, :pessoa_fisica => pessoa_fisica, :estagio => estagio, 
			:emprego => emprego)
		visit agendamentos_path
		click_link 'Excluir'
	end

	def	preencher_e_verificar_agendamento
		fill_in 'Data', :with => "20/10/2014"
		fill_in 'Hora', :with => "20:00"
		select 'NomePessoa', from: "Pessoa fisica"
		select 'CargoEmprego', from: "Emprego"
		select 'CargoEstagio', from: "Estagio"

		click_button 'Salvar'

		expect(page).to have_content 'Data: 2014-10-20'
		expect(page).to have_content 'Hora: 20:00'
		expect(page).to have_content 'Pessoa fisica: NomePessoa'
		expect(page).to have_content 'Emprego: CargoEmprego'
		expect(page).to have_content 'Estagio: CargoEstagio'
	end
end