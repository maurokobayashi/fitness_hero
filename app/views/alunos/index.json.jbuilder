json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :first_name, :last_name, :birthdate, :email, :mobile, :gender, :avatar, :status, :user_id
  json.url aluno_url(aluno, format: :json)
end
