json.array!(@agendamentos) do |agendamento|
  json.extract! agendamento, :id, :data, :hora, :pessoa_fisica_id, :estagio_id, :emprego_id
  json.url agendamento_url(agendamento, format: :json)
end
