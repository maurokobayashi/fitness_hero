# Users
users = User.create!([
  {email:'aluno1@teste.com.br', password:'rtg32oue', password_confirmation:'rtg32oue'},
  {email:'aluno2@teste.com.br', password:'rtg32oue', password_confirmation:'rtg32oue'},
  {email:'aluno3@teste.com.br', password:'rtg32oue', password_confirmation:'rtg32oue'},
  {email:'aluno4@teste.com.br', password:'rtg32oue', password_confirmation:'rtg32oue'},
  {email:'aluno5@teste.com.br', password:'rtg32oue', password_confirmation:'rtg32oue'},
  {email:'personal1@teste.com.br', password:'rtg32oue', password_confirmation:'rtg32oue'}
])

# Alunos
alunos = Aluno.create!([
  {first_name:'Guilherme', last_name:'Sipoloni', birthdate:Date.today-19.years, email:'gui@teste.com.br', mobile:'11980456449', gender:'M', avatar:'http://nickmorgandesigns.com/images/profile-circle.png', status:0, more_info:'', user: users.first},
  {first_name:'Holger', last_name:'Wiehen', birthdate:Date.today-32.years, email:'holger@teste.com.br', mobile:'11980456449', gender:'M', avatar:'http://kiltedbroker.ca/wp-content/uploads/2014/11/Kilted-Broker-Circle-Profile.png', status:0, more_info:'', user: users.second},
  {first_name:'Jessica', last_name:'Félix', birthdate:Date.today-28.years, email:'jeh@teste.com.br', mobile:'11980456449', gender:'F', avatar:'http://allthingseblog.com/wp-content/uploads/2013/06/circle-profile.jpg', status:1, more_info:'', user: users.third},
  {first_name:'Mauro', last_name:'Kobayashi', birthdate:Date.today-29.years, email:'mau@teste.com.br', mobile:'11980456449', gender:'M', avatar:'https://d1p42fqrbwqdsw.cloudfront.net/campaigns/organizer_images/000/021/627/original/Kevin_Chuang_Circle.png?1422335402', status:1, more_info:'', user: users.fourth},
  {first_name:'William', last_name:'Souza', birthdate:Date.today-30.years, email:'will@teste.com.br', mobile:'11980456449', gender:'M', avatar:'http://www.rczr.co.uk/wp-content/uploads/2013/09/circle-profile.png', status:2, more_info:'', user: users.fifth}
])

# Personals
personals = Personal.create!([
  {first_name:'Personal', last_name:'Teste', birthdate:Date.today-30.years, email:'personal@teste.com.br', mobile:'11962531168', cref:'014453-G/SP', gender:'M', avatar: 'http://penitentheart.com/wp-content/uploads/2012/11/cha-cha-profile-circle.png', status: 1, user: users.last}
])