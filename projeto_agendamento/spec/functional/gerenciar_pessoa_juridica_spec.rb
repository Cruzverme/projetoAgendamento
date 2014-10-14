# coding: utf-8
require 'rails_helper'

feature 'gerenciar pessoa juridica' do
	scenario 'incluir PessoaJuridica' do # , :js => true do
		visit new_pessoa_juridica_path
		preencher_e_verificar_pessoa_juridica
	end
	
	scenario 'alterar pessoa juridica' do #, :js => true do
		pessoa_juridica = FactoryGirl.create(:pessoa_juridica)
		visit edit_pessoa_juridica_path(pessoa_juridica)
		preencher_e_verificar_pessoa_juridica
	end

	scenario 'excluir pessoa_juridica' do #, :javascript => true do
		pessoa_juridica = FactoryGirl.create(:pessoa_juridica)
		visit pessoa_juridicas_path
		click_link 'Excluir'
	end

	def	preencher_e_verificar_pessoa_juridica
		fill_in 'Nome', :with => "NomeEmpresa"
		fill_in 'Endereco', :with => "EmpresaEndereco"
		fill_in 'Bairro', :with => "BairroEmpresa"
		fill_in 'Email', :with => "empresaEmail"
		fill_in 'Telefone', :with => "telefoneEmpresa"
		fill_in 'Porte', :with => "porteEmpresa"
		fill_in 'Cnpj', :with => "123456"
		fill_in 'Cidade', :with => "cidadeEmpresa"
		click_button 'Salvar'
		expect(page).to have_content 'Nome: NomeEmpresa'
		expect(page).to have_content 'Endereco: EmpresaEndereco'
		expect(page).to have_content 'Bairro: BairroEmpresa'
		expect(page).to have_content 'Email: empresaEmail'
		expect(page).to have_content 'Telefone: telefoneEmpresa'
		expect(page).to have_content 'Porte: porteEmpresa'
		expect(page).to have_content 'Cnpj: 123456'
		expect(page).to have_content 'Cidade: cidadeEmpresa'
	end
end
