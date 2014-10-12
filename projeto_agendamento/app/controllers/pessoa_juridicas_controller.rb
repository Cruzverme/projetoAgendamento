class PessoaJuridicasController < InheritedResources::Base
	def build_resource_params
		[params.fetch(:pessoa_juridica, {}).permit(:nome, :endereco, :bairro, :email, :telefone, :porte, :cnpj, :cidade)]
	end
end