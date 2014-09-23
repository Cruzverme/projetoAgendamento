json.array!(@agendamentos) do |agendamento|
  json.extract! agendamento, :id, :data, :hora, :Estagio_id, :Emprego_id, :PessoaFisica_id
  json.url agendamento_url(agendamento, format: :json)
end
